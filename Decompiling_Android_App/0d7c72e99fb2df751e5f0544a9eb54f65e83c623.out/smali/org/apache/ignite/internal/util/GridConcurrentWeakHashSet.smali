.class public Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;
.super Ljava/lang/Object;
.source "GridConcurrentWeakHashSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_ARR:[Ljava/lang/Object;


# instance fields
.field private final fact:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TE;",
            "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final gcQ:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
            "<",
            "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement",
            "<TE;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->$assertionsDisabled:Z

    .line 34
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->EMPTY_ARR:[Ljava/lang/Object;

    return-void

    :cond_0
    move v0, v1

    .line 32
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->gcQ:Ljava/lang/ref/ReferenceQueue;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$1;-><init>(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->fact:Lorg/apache/ignite/lang/IgniteClosure;

    .line 58
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initCap"    # I

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->gcQ:Ljava/lang/ref/ReferenceQueue;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$1;-><init>(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->fact:Lorg/apache/ignite/lang/IgniteClosure;

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 72
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F
    .param p3, "conLevel"    # I

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->gcQ:Ljava/lang/ref/ReferenceQueue;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$1;-><init>(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->fact:Lorg/apache/ignite/lang/IgniteClosure;

    .line 91
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(IFI)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;-><init>(I)V

    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->gcQ:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    return-void
.end method

.method private removeStale()V
    .locals 2

    .prologue
    .line 343
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->gcQ:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;

    .local v0, "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;"
    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->remove(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->onGc(Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const-string v0, "e"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->fact:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v1, p1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    .line 124
    .local v2, "res":Z
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 127
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 129
    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->clear()V

    .line 283
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 176
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 177
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;

    .line 178
    .local v1, "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;->get()Ljava/lang/Object;

    move-result-object v2

    .line 180
    .local v2, "reft":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const/4 v3, 0x1

    .line 185
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;
    .end local v2    # "reft":Ljava/lang/Object;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 190
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    :goto_0
    return v2

    .line 193
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 195
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 200
    .end local v1    # "o":Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    if-ne p0, p1, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 329
    :goto_0
    return v1

    .line 324
    :cond_0
    instance-of v1, p1, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    if-nez v1, :cond_1

    .line 325
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 327
    check-cast v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    .line 329
    .local v0, "that":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    iget-object v2, v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 230
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;-><init>(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)V

    return-object v0
.end method

.method protected onGc(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 287
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 289
    if-eqz p1, :cond_1

    .line 290
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;->get()Ljava/lang/Object;

    move-result-object v1

    .line 293
    .local v1, "reft":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 296
    const/4 v2, 0x1

    .line 301
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;>;"
    .end local v1    # "reft":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 308
    .local v2, "res":Z
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 309
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 311
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 313
    goto :goto_0

    .line 316
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "res":Z
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 144
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 150
    const/4 v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;>;"
    :cond_2
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->EMPTY_ARR:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->removeStale()V

    .line 214
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 216
    .local v1, "elems":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->store:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;

    .line 217
    .local v3, "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;->get()Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;"
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet<TE;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
