.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
.super Ljava/lang/Object;
.source "GridDistributedTxMapping.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private explicitLock:Z

.field private last:Z

.field private lastBackups:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private near:Z

.field private node:Lorg/apache/ignite/cluster/ClusterNode;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 79
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    .line 80
    return-void
.end method

.method private ensureModifiable()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->readOnly:Z

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentLinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->readOnly:Z

    .line 278
    :cond_0
    return-void
.end method

.method private evictPartitions([ILjava/util/Collection;)V
    .locals 4
    .param p1, "parts"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 231
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 234
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 236
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v3

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsIntArray([II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 239
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    return-void
.end method

.method private evictReaders(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    :cond_0
    return-void

    .line 261
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 264
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->ensureModifiable()V

    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public dhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 3
    .param p1, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->dhtVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 176
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 177
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->dhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_0

    .line 178
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_0
    return-void
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    return-object v0
.end method

.method public entries(Ljava/util/Collection;Z)V
    .locals 1
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->readOnly:Z

    .line 147
    return-void
.end method

.method public evictPartitions([I)V
    .locals 1
    .param p1, "parts"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 217
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->ensureModifiable()V

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->evictPartitions([ILjava/util/Collection;)V

    .line 222
    :cond_0
    return-void
.end method

.method public evictReaders(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->ensureModifiable()V

    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->evictReaders(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public explicitLock()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->explicitLock:Z

    return v0
.end method

.method public last(Z)V
    .locals 0
    .param p1, "last"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->last:Z

    .line 108
    return-void
.end method

.method public last()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->last:Z

    return v0
.end method

.method public lastBackups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->lastBackups:Ljava/util/Collection;

    return-object v0
.end method

.method public lastBackups(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "lastBackups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->lastBackups:Ljava/util/Collection;

    .line 94
    return-void
.end method

.method public markExplicitLock()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->explicitLock:Z

    .line 161
    return-void
.end method

.method public near(Z)V
    .locals 0
    .param p1, "near"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near:Z

    .line 122
    return-void
.end method

.method public near()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near:Z

    return v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 300
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    .line 301
    return-void
.end method

.method public reads()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->reads()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .prologue
    .line 208
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->ensureModifiable()V

    .line 210
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    const-string v1, "node"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 294
    return-void
.end method

.method public writes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries:Ljava/util/Collection;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->writes()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
