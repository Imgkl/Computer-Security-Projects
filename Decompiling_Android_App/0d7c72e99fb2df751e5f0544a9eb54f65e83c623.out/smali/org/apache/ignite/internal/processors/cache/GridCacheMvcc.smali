.class public final Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
.super Ljava/lang/Object;
.source "GridCacheMvcc.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static volatile log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private locs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private rmts:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 66
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    .line 68
    :cond_1
    return-void
.end method

.method private add0(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 9
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    const/16 v8, 0x5d

    .line 155
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 158
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 159
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 160
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    .line 162
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v3

    if-nez v3, :cond_9

    .line 163
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 164
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 166
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 170
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 171
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setReady()V

    .line 172
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setReentry()V

    .line 174
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 240
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_2
    :goto_0
    return-void

    .line 181
    .restart local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 182
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 184
    .restart local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Versions can\'t match [existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 188
    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 190
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 193
    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 195
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_7
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 205
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_8
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 217
    :cond_9
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 221
    :cond_a
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-nez v3, :cond_b

    .line 222
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    .line 224
    :cond_b
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v3, :cond_c

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot have local and remote owners at the same time [cand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", locs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rmts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 227
    :cond_c
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 230
    .local v1, "cur":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v1, :cond_d

    .line 231
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    goto/16 :goto_0

    .line 238
    :cond_d
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 3
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 121
    .local p1, "cands":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 123
    :cond_0
    if-eqz p1, :cond_2

    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 125
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs candidates(Ljava/util/List;ZZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;
    .locals 5
    .param p2, "reentries"    # Z
    .param p3, "cp"    # Z
    .param p4, "excludeVers"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    .local p1, "col":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    if-nez p1, :cond_1

    .line 1159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 1174
    .end local p1    # "col":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 1161
    .restart local p1    # "col":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1163
    :cond_2
    if-nez p3, :cond_3

    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1166
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1168
    .local v1, "cands":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1170
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsObjectArray([Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1171
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_6
    move-object p1, v1

    .line 1174
    goto :goto_0
.end method

.method private localCandidate(JZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 5
    .param p1, "threadId"    # J
    .param p3, "reentry"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 140
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    .line 148
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nonRollbackPrevious(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 947
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    if-eqz v0, :cond_2

    .line 948
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->used()Z

    move-result v1

    if-nez v1, :cond_1

    .line 952
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_0
    :goto_1
    return-object v0

    .line 947
    .restart local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    goto :goto_0

    .line 952
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private reassign()V
    .locals 10

    .prologue
    .line 832
    const/4 v3, 0x0

    .line 834
    .local v3, "firstRmt":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v8, :cond_3

    .line 835
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 836
    .local v2, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v3, :cond_1

    .line 837
    move-object v3, v2

    .line 841
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 940
    .end local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-void

    .line 846
    :cond_3
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-eqz v8, :cond_2

    .line 847
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 848
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 850
    .restart local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v8

    if-nez v8, :cond_2

    .line 853
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ready()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 854
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->nonRollbackPrevious(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    .line 858
    .local v7, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 861
    :cond_5
    const/4 v0, 0x0

    .line 863
    .local v0, "assigned":Z
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isGreater(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 874
    :goto_1
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 875
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->parent()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->remoteMvccSnapshot([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 876
    .local v1, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 877
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 879
    const/4 v0, 0x1

    .line 885
    .end local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_7
    if-nez v0, :cond_9

    .line 886
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 887
    .restart local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eq v1, v2, :cond_9

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isGreater(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 905
    .end local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_9
    :goto_2
    if-eqz v0, :cond_e

    .line 912
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_a
    if-nez v0, :cond_10

    .line 913
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v8

    if-nez v8, :cond_11

    if-eqz v3, :cond_11

    .line 914
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 915
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v8, :cond_f

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 890
    .restart local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    .local v6, "p":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_3
    if-eqz v6, :cond_c

    .line 891
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 892
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 894
    const/4 v0, 0x1

    .line 900
    :cond_c
    if-eqz v0, :cond_8

    goto :goto_2

    .line 890
    :cond_d
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    goto :goto_3

    .line 908
    .end local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v6    # "p":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_e
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    goto/16 :goto_1

    .line 917
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 919
    const/4 v0, 0x1

    .line 929
    :cond_10
    :goto_4
    if-eqz v0, :cond_2

    .line 930
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    .line 933
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 923
    :cond_11
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 925
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private remove0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "preferLoc"    # Z

    .prologue
    const/4 v1, 0x0

    .line 247
    if-eqz p2, :cond_3

    .line 248
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove0(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove0(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 254
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    .line 257
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    .line 259
    :cond_2
    return-void

    .line 251
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove0(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove0(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    goto :goto_0
.end method

.method private remove0(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 3
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    if-eqz p1, :cond_2

    .line 270
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 273
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setUsed()V

    .line 275
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setRemoved()V

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 279
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->reassign()V

    .line 281
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    .line 284
    :cond_1
    const/4 v2, 0x1

    .line 289
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 13
    .param p1, "parent"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "threadId"    # J
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "timeout"    # J
    .param p7, "reenter"    # Z
    .param p8, "tx"    # Z
    .param p9, "implicitSingle"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 442
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 20
    .param p1, "parent"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "nearNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "nearVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "threadId"    # J
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "timeout"    # J
    .param p9, "reenter"    # Z
    .param p10, "tx"    # Z
    .param p11, "implicitSingle"    # Z
    .param p12, "dhtLoc"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 481
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding local candidate [mvcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", parent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reenter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 486
    :cond_0
    if-nez p12, :cond_1

    if-nez p9, :cond_1

    .line 487
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v18

    .line 489
    .local v18, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v6

    cmp-long v3, v6, p4

    if-nez v3, :cond_1

    .line 490
    const/4 v2, 0x0

    .line 527
    .end local v18    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    return-object v2

    .line 495
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, p7, v6

    if-gez v3, :cond_4

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v3, :cond_4

    .line 497
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v18

    .line 500
    .restart local v18    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v6

    cmp-long v3, v6, p4

    if-eqz v3, :cond_4

    .line 501
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 505
    .end local v18    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    .line 508
    .local v4, "locNodeId":Ljava/util/UUID;
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v17, p12

    invoke-direct/range {v2 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZZZ)V

    .line 523
    .local v2, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    .line 525
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->add0(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    goto :goto_0
.end method

.method public addNearLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 17
    .param p1, "parent"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "otherNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "threadId"    # J
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "timeout"    # J
    .param p9, "tx"    # Z
    .param p10, "implicitSingle"    # Z

    .prologue
    .line 591
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v1 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZZZ)V

    .line 594
    .local v1, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->add0(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 596
    return-object v1
.end method

.method public addRemote(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 17
    .param p1, "parent"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "otherNodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "threadId"    # J
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "timeout"    # J
    .param p9, "tx"    # Z
    .param p10, "implicitSingle"    # Z
    .param p11, "nearLoc"    # Z

    .prologue
    .line 554
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v1 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZZZ)V

    .line 570
    .local v1, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->addRemote(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 572
    return-object v1
.end method

.method public addRemote(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 3
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 603
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 605
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding remote candidate [mvcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 608
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->onReceived(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 610
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->add0(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V

    .line 611
    return-void
.end method

.method public anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 76
    .local v0, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remoteOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

.method public candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1057
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1059
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v0, :cond_0

    .line 1060
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1062
    :cond_0
    return-object v0
.end method

.method public doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 9
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 743
    .local p2, "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p3, "committed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "rolledback":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 745
    :cond_0
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 746
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting remote candidate to done [mvcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 749
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-direct {p0, v6, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 751
    .local v1, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v1, :cond_a

    .line 752
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 753
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 754
    :cond_3
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote candidate is marked as local: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 755
    :cond_4
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote candidate is marked as near local: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 757
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 758
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setUsed()V

    .line 760
    const/4 v5, 0x0

    .line 762
    .local v5, "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 763
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 765
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote candidate marked as near local: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 767
    :cond_7
    if-ne v0, v1, :cond_8

    .line 768
    if-eqz v5, :cond_a

    .line 769
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 770
    .local v4, "mv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 774
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "mv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_8
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 776
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 778
    if-nez v5, :cond_9

    .line 779
    new-instance v5, Ljava/util/LinkedList;

    .end local v5    # "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 781
    .restart local v5    # "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_9
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 786
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v5    # "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_a
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v6

    return-object v6
.end method

.method public firstLocal()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1247
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    goto :goto_0
.end method

.method public firstRemote()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    goto :goto_0
.end method

.method public hasCandidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1112
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs isEmpty([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 6
    .param p1, "exclude"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 298
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-nez v4, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v2

    .line 301
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-eqz v4, :cond_5

    .line 302
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 304
    :cond_2
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 305
    goto :goto_0

    .line 307
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 308
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsObjectArray([Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 309
    goto :goto_0

    .line 312
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    .line 313
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 315
    :cond_6
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v3

    .line 316
    goto :goto_0

    .line 318
    :cond_7
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 319
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsObjectArray([Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v2, v3

    .line 320
    goto :goto_0
.end method

.method public isLocallyOwned(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1220
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1222
    .local v0, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLocallyOwnedByCurrentThread()Z
    .locals 4

    .prologue
    .line 1181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->isLocallyOwnedByThread(JZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    return v0
.end method

.method public isLocallyOwnedByIdOrThread(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)Z
    .locals 4
    .param p1, "lockVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "threadId"    # J

    .prologue
    .line 1231
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1233
    .local v0, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs isLocallyOwnedByThread(JZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 5
    .param p1, "threadId"    # J
    .param p3, "allowDhtLoc"    # Z
    .param p4, "exclude"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const/4 v1, 0x0

    .line 1190
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1192
    .local v0, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p4, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsObjectArray([Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLockedByThread(JLjava/util/UUID;)Z
    .locals 5
    .param p1, "threadId"    # J
    .param p3, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1202
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1204
    .local v0, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOwnedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1255
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1257
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOwnedByAny()Z
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localCandidate(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1
    .param p1, "threadId"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1073
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localCandidate(JZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public localCandidate(Ljava/util/UUID;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1098
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 1099
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1100
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 1103
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 3
    .param p1, "excludeVers"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidates(Ljava/util/List;ZZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs localCandidates(Z[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;
    .locals 2
    .param p1, "reentries"    # Z
    .param p2, "excludeVers"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidates(Ljava/util/List;ZZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public localCandidatesNoCopy(Z)Ljava/util/List;
    .locals 3
    .param p1, "reentry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->emptyVersion()[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidates(Ljava/util/List;ZZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    .line 104
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 106
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 108
    .local v0, "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    .end local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    return-object v0

    .restart local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    move-object v0, v1

    .line 108
    goto :goto_0

    .end local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_2
    move-object v0, v1

    .line 111
    goto :goto_0
.end method

.method public markOwned(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .param p1, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "owned"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 410
    if-nez p2, :cond_0

    .line 411
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 420
    :goto_0
    return-object v1

    .line 413
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 416
    .local v0, "baseCand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 420
    .end local v0    # "baseCand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    goto :goto_0
.end method

.method public orderCompleted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 10
    .param p1, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 338
    .local p2, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p3, "rolledbackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 340
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v7, :cond_a

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 341
    const/4 v6, 0x0

    .line 343
    .local v6, "mvAfter":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    const/4 v5, -0x1

    .line 345
    .local v5, "maxIdx":I
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 346
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 348
    .local v1, "cur":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 349
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 351
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot not have local owner and remote completed transactions at the same time [baseVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", committedVers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rolledbackVers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", localOwner="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", locs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rmts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 356
    :cond_2
    if-gez v5, :cond_3

    .line 357
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    .line 371
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 372
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    goto/16 :goto_0

    .line 359
    :cond_4
    if-ltz v5, :cond_3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isGreaterEqual(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 360
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3

    .line 361
    if-nez v6, :cond_5

    .line 362
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "mvAfter":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 364
    .restart local v6    # "mvAfter":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 366
    invoke-interface {v6, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 375
    .end local v1    # "cur":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_6
    if-ltz v5, :cond_7

    if-eqz v6, :cond_7

    .line 376
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 378
    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 379
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-interface {v4, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 383
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 384
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 385
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 387
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 388
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setUsed()V

    .line 390
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 394
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_9
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 395
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    .line 399
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v5    # "maxIdx":I
    .end local v6    # "mvAfter":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_a
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v7

    return-object v7
.end method

.method public readyLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 633
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 635
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setReady()V

    .line 637
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->reassign()V

    .line 639
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public readyLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 620
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    .line 625
    :goto_0
    return-object v1

    .line 623
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 625
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->readyLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v1

    goto :goto_0
.end method

.method public readyNearLocal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 13
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "mappedVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 661
    .local p3, "committedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p4, "rolledBackVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p5, "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-direct {p0, v10, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    .line 663
    .local v2, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v2, :cond_c

    .line 664
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Near local candidate is not marked as near local: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 666
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setReady()V

    .line 668
    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v9

    .line 670
    .local v9, "setMapped":Z
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    if-nez v9, :cond_1

    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to set mapped dht version for near local candidate [mappedVer="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cand="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 674
    :cond_1
    const/4 v6, 0x0

    .line 676
    .local v6, "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 677
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 679
    .local v1, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v10, :cond_3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Near local candidate is not marked as near local: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 681
    :cond_3
    if-ne v1, v2, :cond_4

    .line 682
    if-eqz v6, :cond_7

    .line 683
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 684
    .local v5, "mv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-interface {v4, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 689
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "mv":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_4
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v10

    if-nez v10, :cond_2

    .line 693
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v10, :cond_5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ready()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot have more then one ready near-local candidate [c="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cand="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mvcc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 696
    :cond_5
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 698
    if-nez v6, :cond_6

    .line 699
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 701
    .restart local v6    # "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_6
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 706
    .end local v1    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_7
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v10, :cond_b

    .line 707
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 708
    .local v7, "rmt":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 710
    .local v8, "rmtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual {v8, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 711
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    invoke-virtual {p2, v10}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 713
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    goto :goto_2

    .line 717
    :cond_9
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 718
    :cond_a
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    goto :goto_2

    .line 723
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "rmt":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v8    # "rmtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_b
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->reassign()V

    .line 726
    .end local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v6    # "mvAfter":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v9    # "setMapped":Z
    :cond_c
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v10

    return-object v10
.end method

.method public recheck()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 961
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->reassign()V

    .line 963
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public releaseLocal()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 971
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->releaseLocal(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public releaseLocal(J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 5
    .param p1, "threadId"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 981
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->localOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 983
    .local v0, "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    .line 991
    .end local v0    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_0
    :goto_0
    return-object v0

    .line 987
    .restart local v0    # "owner":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setUsed()V

    .line 989
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V

    .line 991
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    goto :goto_0
.end method

.method public remoteCandidate(Ljava/util/UUID;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1082
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 1083
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1084
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->threadId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 1087
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs remoteCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;
    .locals 3
    .param p1, "excludeVers"    # [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidates(Ljava/util/List;ZZ[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remoteOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    .line 88
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 92
    .local v0, "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->used()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    .end local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :goto_0
    return-object v0

    .restart local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    move-object v0, v1

    .line 92
    goto :goto_0

    .end local v0    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_2
    move-object v0, v1

    .line 95
    goto :goto_0
.end method

.method public remove(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1001
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->remove0(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)V

    .line 1003
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    return-object v0
.end method

.method public removeExplicitNodeCandidates(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1013
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-eqz v2, :cond_2

    .line 1014
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1015
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1017
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->tx()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setUsed()V

    .line 1019
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setRemoved()V

    .line 1021
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1025
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1026
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    .line 1029
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    if-eqz v2, :cond_5

    .line 1030
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1031
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1033
    .restart local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->tx()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->otherNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1034
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setUsed()V

    .line 1035
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setRemoved()V

    .line 1037
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1041
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1042
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->locs:Ljava/util/LinkedList;

    .line 1045
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->reassign()V

    .line 1047
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->anyOwner()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    return-object v2
.end method

.method public salvageRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 6
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 796
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 798
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-direct {p0, v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->candidate(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 800
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_3

    .line 801
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 802
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 804
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->rmts:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 805
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 808
    .local v2, "rmt":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-ne v2, v0, :cond_4

    .line 826
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v2    # "rmt":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_3
    return-void

    .line 812
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .restart local v2    # "rmt":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_4
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 814
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    .line 816
    .local v3, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v3, :cond_6

    .line 817
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->systemInvalidate(Z)V

    .line 819
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setOwner()V

    .line 820
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->setUsed()V

    goto :goto_0

    .line 823
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1262
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
