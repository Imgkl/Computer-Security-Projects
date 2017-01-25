.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;
.super Ljava/lang/Object;
.source "GridCacheQueryMetricsKey.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private clause:Ljava/lang/String;

.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "clause"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 52
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->cls:Ljava/lang/Class;

    .line 53
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method clause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 90
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 92
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;

    .line 94
    .local v0, "oth":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->queryClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->cls:Ljava/lang/Class;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->ordinal()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->cls:Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->cls:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    mul-int/lit16 v1, v2, 0x3c1

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method queryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->cls:Ljava/lang/Class;

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
    .line 113
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->fromOrdinal(B)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->cls:Ljava/lang/Class;

    .line 115
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause:Ljava/lang/String;

    .line 116
    return-void
.end method

.method type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

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
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->cls:Ljava/lang/Class;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsKey;->clause:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 109
    return-void
.end method
