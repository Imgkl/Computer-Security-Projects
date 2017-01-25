.class public Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;
.super Ljava/lang/Object;
.source "BasicJdbcDialect.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final DFLT_MAX_PARAMS_CNT:I = 0x7d0


# instance fields
.field protected maxParamsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->maxParamsCnt:I

    return-void
.end method

.method protected static mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "strs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$2;

    invoke-direct {v0}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$2;-><init>()V

    const-string v1, ""

    const-string v2, ""

    invoke-static {p0, v0, v1, p1, v2}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static mkString(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "strs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$1;

    invoke-direct {v0}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$1;-><init>()V

    invoke-static {p0, v0, p1, p2, p3}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lorg/apache/ignite/internal/util/typedef/C1",
            "<TT;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "elems":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "f":Lorg/apache/ignite/internal/util/typedef/C1;, "Lorg/apache/ignite/internal/util/typedef/C1<TT;Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v3, p2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const/4 v1, 0x1

    .line 50
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "elem":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 52
    invoke-virtual {v3, p3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 54
    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/util/typedef/C1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_0

    .line 59
    .end local v0    # "elem":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {v3, p4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected static repeat(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "cnt"    # I
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v1, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(I)V

    .line 106
    .local v1, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 109
    if-lez v0, :cond_0

    .line 110
    invoke-virtual {v1, p3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 112
    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v1, p4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static where(Ljava/util/Collection;I)Ljava/lang/String;
    .locals 7
    .param p1, "keyCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 125
    new-instance v2, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 127
    .local v2, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 128
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "keyCol":Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 145
    .end local v0    # "keyCol":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 133
    .restart local v0    # "keyCol":Ljava/lang/String;
    :cond_0
    const-string v3, "?"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ")"

    invoke-static {v3, p1, v4, v5, v6}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->repeat(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_0

    .line 136
    .end local v0    # "keyCol":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$3;

    invoke-direct {v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$3;-><init>()V

    const-string v4, "("

    const-string v5, " AND "

    const-string v6, ")"

    invoke-static {p0, v3, v4, v5, v6}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "keyParams":Ljava/lang/String;
    const-string v3, ""

    const-string v4, " OR "

    const-string v5, ""

    invoke-static {v1, p1, v3, v4, v5}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->repeat(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getMaxParameterCount()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->maxParamsCnt:I

    return v0
.end method

.method public hasMerge()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public insertQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;
    .locals 9
    .param p1, "fullTblName"    # Ljava/lang/String;
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
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "valCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 221
    invoke-static {v3, p2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 223
    .local v0, "cols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "INSERT INTO %s(%s) VALUES(%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, ","

    invoke-static {v0, v4}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "?"

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    const-string v6, ""

    const-string v7, ","

    const-string v8, ""

    invoke-static {v4, v5, v6, v7, v8}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->repeat(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loadCacheQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .param p1, "fullTblName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, "uniqCols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-string v0, "SELECT %s FROM %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ","

    invoke-static {p2, v3}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCacheRangeQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "fullTblName"    # Ljava/lang/String;
    .param p4, "appendLowerBound"    # Z
    .param p5, "appendUpperBound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "uniqCols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 159
    sget-boolean v4, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 161
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 163
    .local v3, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 165
    .local v1, "cols":[Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 166
    const-string v4, "("

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 168
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .local v0, "cnt":I
    :goto_0
    if-lez v0, :cond_4

    .line 169
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 170
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    .line 171
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v4

    const-string v5, " > ? "

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 169
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v4

    const-string v5, " = ? AND "

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_2

    .line 174
    :cond_2
    if-eq v0, v8, :cond_3

    .line 175
    const-string v4, "OR "

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 168
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 178
    .end local v2    # "j":I
    :cond_4
    const-string v4, ")"

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 181
    .end local v0    # "cnt":I
    :cond_5
    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    .line 182
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 184
    :cond_6
    if-eqz p5, :cond_b

    .line 185
    const-string v4, "("

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 187
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .restart local v0    # "cnt":I
    :goto_3
    if-lez v0, :cond_a

    .line 188
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v0, :cond_8

    .line 189
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_7

    .line 190
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v4

    const-string v5, " <= ? "

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 188
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 192
    :cond_7
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v4

    const-string v5, " = ? AND "

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_5

    .line 193
    :cond_8
    if-eq v0, v8, :cond_9

    .line 194
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 187
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 197
    .end local v2    # "j":I
    :cond_a
    const-string v4, ")"

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 200
    .end local v0    # "cnt":I
    :cond_b
    const-string v4, "SELECT %s FROM %s WHERE %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ","

    invoke-static {p3, v7}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p1, v5, v8

    const/4 v6, 0x2

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public loadCacheSelectRangeQuery(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .param p1, "fullTblName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, ","

    invoke-static {p2, v1}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "cols":Ljava/lang/String;
    const-string v1, "SELECT %s FROM (SELECT %s, ROWNUM() AS rn FROM %s ORDER BY %s) WHERE mod(rn, ?) = 0"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loadQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;I)Ljava/lang/String;
    .locals 5
    .param p1, "fullTblName"    # Ljava/lang/String;
    .param p4, "keyCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "cols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    sget-boolean v1, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 213
    :cond_0
    invoke-static {p2, p4}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->where(Ljava/util/Collection;I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "params":Ljava/lang/String;
    const-string v1, "SELECT %s FROM %s WHERE %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ","

    invoke-static {p3, v4}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public mergeQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .param p1, "fullTblName"    # Ljava/lang/String;
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
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "uniqCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, ""

    return-object v0
.end method

.method public removeQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p1, "fullTblName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "keyCols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$5;

    invoke-direct {v1, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$5;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;)V

    const-string v2, ""

    const-string v3, " AND "

    const-string v4, ""

    invoke-static {p2, v1, v2, v3, v4}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "whereParams":Ljava/lang/String;
    const-string v1, "DELETE FROM %s WHERE %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setMaxParameterCount(I)V
    .locals 0
    .param p1, "maxParamsCnt"    # I

    .prologue
    .line 272
    iput p1, p0, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->maxParamsCnt:I

    .line 273
    return-void
.end method

.method public updateQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 6
    .param p1, "fullTblName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "keyCols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "valCols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 230
    new-instance v1, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$4;

    invoke-direct {v1, p0}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect$4;-><init>(Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;)V

    const-string v2, ""

    const-string v3, ","

    const-string v4, ""

    invoke-static {p3, v1, v2, v3, v4}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->mkString(Ljava/lang/Iterable;Lorg/apache/ignite/internal/util/typedef/C1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "params":Ljava/lang/String;
    const-string v1, "UPDATE %s SET %s WHERE %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object v0, v2, v5

    const/4 v3, 0x2

    invoke-static {p2, v5}, Lorg/apache/ignite/cache/store/jdbc/dialect/BasicJdbcDialect;->where(Ljava/util/Collection;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
