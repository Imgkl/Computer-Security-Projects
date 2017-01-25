.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;
.super Ljava/lang/Object;
.source "GridCacheSqlQuery.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final EMPTY_PARAMS:[Ljava/lang/Object;

.field private static final serialVersionUID:J


# instance fields
.field alias:Ljava/lang/String;

.field params:[Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field qry:Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->EMPTY_PARAMS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "qry"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "qry must not be empty"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 62
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->alias:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->qry:Ljava/lang/String;

    .line 65
    invoke-static {p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->EMPTY_PARAMS:[Ljava/lang/Object;

    .end local p3    # "params":[Ljava/lang/Object;
    :cond_0
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->params:[Ljava/lang/Object;

    .line 66
    return-void

    .line 60
    .restart local p3    # "params":[Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public parameters()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->params:[Ljava/lang/Object;

    return-object v0
.end method

.method public query()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->qry:Ljava/lang/String;

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
    .line 98
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->alias:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->qry:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readArray(Ljava/io/ObjectInput;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->params:[Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->params:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->EMPTY_PARAMS:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->params:[Ljava/lang/Object;

    .line 104
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->alias:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->qry:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;->params:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeArray(Ljava/io/ObjectOutput;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method
