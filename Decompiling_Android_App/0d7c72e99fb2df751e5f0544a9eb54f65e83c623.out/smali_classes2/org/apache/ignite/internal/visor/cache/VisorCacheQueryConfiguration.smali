.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheQueryConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private indexedTypes:[Ljava/lang/String;

.field private longQryWarnTimeout:J

.field private sqlEscapeAll:Z

.field private sqlFuncClss:[Ljava/lang/String;

.field private sqlOnheapRowCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compactClasses([Ljava/lang/Class;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "clss":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 61
    const/4 v2, 0x0

    .line 70
    :cond_0
    return-object v2

    .line 63
    :cond_1
    array-length v1, p0

    .line 65
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    .line 67
    .local v2, "res":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 68
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;
    .locals 4
    .param p0, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 78
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;-><init>()V

    .line 80
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getSqlFunctionClasses()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->compactClasses([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->sqlFuncClss:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getLongQueryWarningTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->longQryWarnTimeout:J

    .line 82
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSqlEscapeAll()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->sqlEscapeAll:Z

    .line 83
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getIndexedTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->compactClasses([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->indexedTypes:[Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getSqlOnheapRowCacheSize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->sqlOnheapRowCacheSize:I

    .line 86
    return-object v0
.end method


# virtual methods
.method public indexedTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->indexedTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public longQueryWarningTimeout()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->longQryWarnTimeout:J

    return-wide v0
.end method

.method public sqlEscapeAll()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->sqlEscapeAll:Z

    return v0
.end method

.method public sqlFunctionClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->sqlFuncClss:[Ljava/lang/String;

    return-object v0
.end method

.method public sqlOnheapRowCacheSize()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryConfiguration;->sqlOnheapRowCacheSize:I

    return v0
.end method
