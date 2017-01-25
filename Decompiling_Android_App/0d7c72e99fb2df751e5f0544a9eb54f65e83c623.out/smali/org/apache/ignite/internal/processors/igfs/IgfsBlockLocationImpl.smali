.class public Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;
.super Ljava/lang/Object;
.source "IgfsBlockLocationImpl.java"

# interfaces
.implements Lorg/apache/ignite/igfs/IgfsBlockLocation;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private hosts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private len:J

.field private names:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nodeIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(JJLjava/util/Collection;)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-wide/16 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p3, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_3
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    .line 87
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    .line 89
    invoke-direct {p0, p5}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->convertFromNodes(Ljava/util/Collection;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsBlockLocation;J)V
    .locals 2
    .param p1, "location"    # Lorg/apache/ignite/igfs/IgfsBlockLocation;
    .param p2, "len"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->start()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    .line 69
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    .line 71
    invoke-interface {p1}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->nodeIds()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    .line 72
    invoke-interface {p1}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->names()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    .line 73
    invoke-interface {p1}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->hosts()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    .line 74
    return-void
.end method

.method private convertFromNodes(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 230
    .local v6, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 231
    .local v2, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v8, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .line 236
    .local v7, "node":Lorg/apache/ignite/cluster/ClusterNode;
    :try_start_0
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toInetAddresses(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/util/Collection;

    move-result-object v1

    .line 238
    .local v1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 239
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2329

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 247
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 248
    .local v5, "ignored":Lorg/apache/ignite/IgniteCheckedException;
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 251
    .end local v5    # "ignored":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2329

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 254
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    iput-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    .line 255
    iput-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    .line 256
    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    .line 257
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p1, p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 139
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 141
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;

    .line 143
    .local v0, "that":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 125
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 127
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 130
    return v0
.end method

.method public hosts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    return-wide v0
.end method

.method public names()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    return-object v0
.end method

.method public nodeIds()Ljava/util/Collection;
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

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    .line 195
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    .line 199
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 202
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 205
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 210
    .restart local v1    # "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    .line 212
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 213
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    .line 219
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 220
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    :cond_2
    return-void
.end method

.method public start()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 161
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 163
    :cond_1
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->start:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 164
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->len:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 166
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 168
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 171
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->nodeIds:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 172
    .local v3, "nodeId":Ljava/util/UUID;
    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    goto :goto_1

    .line 166
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "nodeId":Ljava/util/UUID;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 175
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 177
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->names:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 180
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 182
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;->hosts:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, "host":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 184
    .end local v0    # "host":Ljava/lang/String;
    :cond_5
    return-void
.end method
