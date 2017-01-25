.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldsResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult",
        "<TQ;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private meta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "recipient"    # Ljava/lang/Object;

    .prologue
    .line 2239
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult<TQ;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;-><init>(Ljava/lang/Object;)V

    .line 2240
    return-void
.end method


# virtual methods
.method public metaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2246
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult<TQ;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->get()Ljava/lang/Object;

    .line 2248
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->meta:Ljava/util/List;

    return-object v0
.end method

.method public metaData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2255
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult<TQ;>;"
    .local p1, "meta":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$FieldsResult;->meta:Ljava/util/List;

    .line 2256
    return-void
.end method
