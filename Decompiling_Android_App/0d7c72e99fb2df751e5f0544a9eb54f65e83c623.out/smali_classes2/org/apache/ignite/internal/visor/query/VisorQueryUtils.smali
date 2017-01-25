.class public Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;
.super Ljava/lang/Object;
.source "VisorQueryUtils.java"


# static fields
.field public static final RMV_DELAY:Ljava/lang/Integer;

.field public static final SCAN_COL_NAMES:[Lorg/apache/ignite/internal/visor/query/VisorQueryField;

.field public static final SCAN_QRY_NAME:Ljava/lang/String; = "VISOR_SCAN_QUERY"

.field public static final SQL_QRY_NAME:Ljava/lang/String; = "VISOR_SQL_QUERY"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    const v0, 0x493e0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->RMV_DELAY:Ljava/lang/Integer;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    const-string v3, ""

    const-string v4, "Key Class"

    invoke-direct {v2, v3, v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    const-string v3, ""

    const-string v4, "Key"

    invoke-direct {v2, v3, v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    const-string v3, ""

    const-string v4, "Value Class"

    invoke-direct {v2, v3, v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    const-string v3, ""

    const-string v4, "Value"

    invoke-direct {v2, v3, v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->SCAN_COL_NAMES:[Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchScanQueryRows(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/util/Map$Entry;I)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 8
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .local p1, "savedNext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "cnt":I
    if-eqz p1, :cond_0

    move-object v2, p1

    .line 131
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    if-eqz v2, :cond_1

    if-ge v0, p2, :cond_1

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "k":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 135
    .local v4, "v":Ljava/lang/Object;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->typeOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->typeOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 139
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    .restart local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 129
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "v":Ljava/lang/Object;
    :cond_0
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    goto :goto_0

    .line 142
    .restart local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    new-instance v5, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-direct {v5, v3, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static fetchSqlQueryRows(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/util/List;I)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 7
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<",
            "Ljava/util/List",
            "<*>;>;",
            "Ljava/util/List",
            "<*>;I)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/List<*>;>;"
    .local p1, "savedNext":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v5, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 179
    .local v0, "cnt":I
    if-eqz p1, :cond_0

    move-object v2, p1

    .line 181
    .local v2, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    if-eqz v2, :cond_5

    if-ge v0, p2, :cond_5

    .line 182
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/Object;

    .line 184
    .local v4, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 185
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 187
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 188
    const/4 v6, 0x0

    aput-object v6, v4, v1

    .line 184
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .end local v1    # "i":I
    .end local v2    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "row":[Ljava/lang/Object;
    :cond_0
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v2, v6

    goto :goto_0

    .line 189
    .restart local v1    # "i":I
    .restart local v2    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "row":[Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->isKnownType(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    aput-object v3, v4, v1

    goto :goto_2

    .line 192
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "binary"

    :goto_3
    aput-object v6, v4, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 195
    .end local v3    # "o":Ljava/lang/Object;
    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 199
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    check-cast v2, Ljava/util/List;

    .line 200
    .restart local v2    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_0

    .line 202
    .end local v1    # "i":I
    .end local v4    # "row":[Ljava/lang/Object;
    :cond_5
    new-instance v6, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-direct {v6, v5, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private static isKnownType(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 152
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mkString([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 9
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "maxSz"    # I

    .prologue
    .line 85
    const-string v6, ", "

    .line 87
    .local v6, "sep":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 91
    .local v2, "first":Ljava/lang/Boolean;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 92
    .local v7, "v":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 93
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 97
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, p1, :cond_3

    .line 103
    .end local v7    # "v":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lt v8, p1, :cond_1

    .line 104
    const-string v1, "..."

    .line 106
    .local v1, "end":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .end local v1    # "end":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 95
    .restart local v7    # "v":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static typeOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 56
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v1, "n/a"

    goto :goto_0
.end method

.method private static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const-string v0, "null"

    .line 76
    :goto_0
    return-object v0

    .line 70
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, [Ljava/lang/Byte;

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Byte;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", values=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    const/16 v1, 0x78

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->mkString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
