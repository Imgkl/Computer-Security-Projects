.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheSqlIndexMetadata"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private descendings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private unique:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2114
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2135
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "unique"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2144
    .local p2, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "descendings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2145
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2146
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2147
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2149
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->name:Ljava/lang/String;

    .line 2150
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->fields:Ljava/util/Collection;

    .line 2151
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->descendings:Ljava/util/Collection;

    .line 2152
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->unique:Z

    .line 2153
    return-void
.end method


# virtual methods
.method public descending(Ljava/lang/String;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 2167
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->descendings:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fields()Ljava/util/Collection;
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
    .line 2162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->fields:Ljava/util/Collection;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->name:Ljava/lang/String;

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
    .line 2185
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->name:Ljava/lang/String;

    .line 2186
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->fields:Ljava/util/Collection;

    .line 2187
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->descendings:Ljava/util/Collection;

    .line 2188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->unique:Z

    .line 2189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2193
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unique()Z
    .locals 1

    .prologue
    .line 2172
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->unique:Z

    return v0
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
    .line 2177
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 2178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->fields:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 2179
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->descendings:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 2180
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlIndexMetadata;->unique:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 2181
    return-void
.end method
