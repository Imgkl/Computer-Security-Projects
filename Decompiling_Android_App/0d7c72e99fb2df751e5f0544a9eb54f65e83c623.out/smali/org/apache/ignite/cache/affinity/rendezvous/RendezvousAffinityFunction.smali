.class public Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
.super Ljava/lang/Object;
.source "RendezvousAffinityFunction.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/AffinityFunction;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$HashComparator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DFLT_PARTITION_COUNT:I = 0x400

.field private static final serialVersionUID:J


# instance fields
.field private backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private digest:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private exclNeighbors:Z

.field private hashIdRslvr:Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private parts:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->$assertionsDisabled:Z

    .line 63
    new-instance v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$HashComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$HashComparator;-><init>(Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;)V

    sput-object v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>(Z)V

    .line 102
    return-void
.end method

.method public constructor <init>(ILorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 1
    .param p1, "parts"    # I
    .param p2    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "backupFilter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>(ZILorg/apache/ignite/lang/IgniteBiPredicate;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "exclNeighbors"    # Z

    .prologue
    .line 114
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>(ZI)V

    .line 115
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "exclNeighbors"    # Z
    .param p2, "parts"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;-><init>(ZILorg/apache/ignite/lang/IgniteBiPredicate;)V

    .line 129
    return-void
.end method

.method private constructor <init>(ZILorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 3
    .param p1, "exclNeighbors"    # Z
    .param p2, "parts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "backupFilter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction$1;-><init>(Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;)V

    iput-object v1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->digest:Ljava/lang/ThreadLocal;

    .line 91
    new-instance v1, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;

    invoke-direct {v1}, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->hashIdRslvr:Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    .line 156
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "parts != 0"

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 158
    iput-boolean p1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    .line 159
    iput p2, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    .line 160
    iput-object p3, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 163
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 156
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Failed to obtain MD5 message digest instance."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private allNeighbors(Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "neighborhoodCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .local p2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 479
    .local v2, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 480
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 484
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return-object v2
.end method

.method private neighbors(Ljava/util/Collection;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/high16 v9, 0x3f800000    # 1.0f

    .line 443
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v3, v8, v9}, Ljava/util/HashMap;-><init>(IF)V

    .line 446
    .local v3, "macMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 447
    .local v6, "node":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v8, "org.apache.ignite.macs"

    invoke-interface {v6, v8}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 449
    .local v4, "macs":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 451
    .local v7, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-nez v7, :cond_0

    .line 452
    new-instance v7, Ljava/util/HashSet;

    .end local v7    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 454
    .restart local v7    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    .end local v4    # "macs":Ljava/lang/String;
    .end local v6    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v5, v8, v9}, Ljava/util/HashMap;-><init>(IF)V

    .line 462
    .local v5, "neighbors":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 463
    .local v0, "group":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 464
    .restart local v6    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 467
    .end local v0    # "group":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    return-object v5
.end method


# virtual methods
.method public assignPartition(ILjava/util/List;ILjava/util/Map;)Ljava/util/List;
    .locals 28
    .param p1, "part"    # I
    .param p3, "backups"    # I
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p4, "neighborhoodCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    .line 380
    .end local p2    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_0
    return-object p2

    .line 283
    .restart local p2    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v12, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->digest:Ljava/lang/ThreadLocal;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/MessageDigest;

    .line 287
    .local v6, "d":Ljava/security/MessageDigest;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/cluster/ClusterNode;

    .line 288
    .local v14, "node":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->hashIdRslvr:Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;->resolve(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/Object;

    move-result-object v15

    .line 291
    .local v15, "nodeHash":Ljava/lang/Object;
    :try_start_0
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    .local v17, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->ignite:Lorg/apache/ignite/Ignite;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v16

    .line 295
    .local v16, "nodeHashBytes":[B
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I)[B

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 296
    const/16 v21, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 298
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 300
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 302
    .local v5, "bytes":[B
    const/16 v21, 0x0

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0xff

    and-long v22, v22, v24

    const/16 v21, 0x1

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    const/16 v21, 0x8

    shl-long v24, v24, v21

    or-long v22, v22, v24

    const/16 v21, 0x2

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    const/16 v21, 0x10

    shl-long v24, v24, v21

    or-long v22, v22, v24

    const/16 v21, 0x3

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    const/16 v21, 0x18

    shl-long v24, v24, v21

    or-long v22, v22, v24

    const/16 v21, 0x4

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    const/16 v21, 0x20

    shl-long v24, v24, v21

    or-long v22, v22, v24

    const/16 v21, 0x5

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    const/16 v21, 0x28

    shl-long v24, v24, v21

    or-long v22, v22, v24

    const/16 v21, 0x6

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    const/16 v21, 0x30

    shl-long v24, v24, v21

    or-long v22, v22, v24

    const/16 v21, 0x7

    aget-byte v21, v5, v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0xff

    and-long v24, v24, v26

    const/16 v21, 0x38

    shl-long v24, v24, v21

    or-long v8, v22, v24

    .line 312
    .local v8, "hash":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 314
    .end local v5    # "bytes":[B
    .end local v8    # "hash":J
    .end local v16    # "nodeHashBytes":[B
    .end local v17    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    .line 315
    .local v7, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v21, Lorg/apache/ignite/IgniteException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 319
    .end local v7    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v14    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v15    # "nodeHash":Ljava/lang/Object;
    :cond_1
    sget-object v21, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v21

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    const v21, 0x7fffffff

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 326
    const v19, 0x7fffffff

    .line 328
    .local v19, "primaryAndBackups":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v20, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/cluster/ClusterNode;

    .line 338
    .local v18, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    if-lez p3, :cond_3

    .line 342
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_3

    .line 343
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 345
    .local v13, "next":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/cluster/ClusterNode;

    .line 347
    .restart local v14    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->allNeighbors(Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v4

    .line 350
    .local v4, "allNeighbors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v4, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 351
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v4    # "allNeighbors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 363
    .end local v10    # "i":I
    .end local v13    # "next":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v14    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 365
    const/4 v10, 0x1

    .restart local v10    # "i":I
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 366
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 368
    .restart local v13    # "next":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/cluster/ClusterNode;

    .line 370
    .restart local v14    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 371
    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 378
    .end local v10    # "i":I
    .end local v13    # "next":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v14    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_5
    sget-boolean v21, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->$assertionsDisabled:Z

    if-nez v21, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 331
    .end local v18    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v19    # "primaryAndBackups":I
    .end local v20    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_6
    add-int/lit8 v19, p3, 0x1

    .line 333
    .restart local v19    # "primaryAndBackups":I
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v20    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    goto/16 :goto_2

    .line 354
    .restart local v10    # "i":I
    .restart local v13    # "next":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v14    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v18    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_7
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 355
    :cond_8
    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 342
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 365
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v10    # "i":I
    .end local v13    # "next":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v14    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_b
    move-object/from16 p2, v20

    .line 380
    goto/16 :goto_0
.end method

.method public assignPartitions(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;
    .locals 6
    .param p1, "affCtx"    # Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Ljava/util/ArrayList;

    iget v4, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v0, "assignments":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    iget-boolean v4, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->currentTopologySnapshot()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->neighbors(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 405
    .local v2, "neighborhoodCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    if-ge v1, v4, :cond_1

    .line 406
    invoke-interface {p1}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->currentTopologySnapshot()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->backups()I

    move-result v5

    invoke-virtual {p0, v1, v4, v5, v2}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->assignPartition(ILjava/util/List;ILjava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 409
    .local v3, "partAssignment":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    .end local v1    # "i":I
    .end local v2    # "neighborhoodCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .end local v3    # "partAssignment":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 412
    .restart local v1    # "i":I
    .restart local v2    # "neighborhoodCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :cond_1
    return-object v0
.end method

.method public getBackupFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-object v0
.end method

.method public getHashIdResolver()Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->hashIdRslvr:Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    return-object v0
.end method

.method public getPartitions()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    return v0
.end method

.method public isExcludeNeighbors()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    return v0
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->safeAbs(I)I

    move-result v0

    return v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    return v0
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
    .line 430
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    .line 431
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    .line 432
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    iput-object v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->hashIdRslvr:Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    .line 433
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 434
    return-void
.end method

.method public removeNode(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 418
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public setBackupFilter(Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 0
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "backupFilter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 251
    return-void
.end method

.method public setExcludeNeighbors(Z)V
    .locals 0
    .param p1, "exclNeighbors"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    .line 273
    return-void
.end method

.method public setHashIdResolver(Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;)V
    .locals 0
    .param p1, "hashIdRslvr"    # Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->hashIdRslvr:Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    .line 225
    return-void
.end method

.method public setPartitions(I)V
    .locals 0
    .param p1, "parts"    # I

    .prologue
    .line 192
    iput p1, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    .line 193
    return-void
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
    .line 422
    iget v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->parts:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 423
    iget-boolean v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->exclNeighbors:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 424
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->hashIdRslvr:Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->backupFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 426
    return-void
.end method
