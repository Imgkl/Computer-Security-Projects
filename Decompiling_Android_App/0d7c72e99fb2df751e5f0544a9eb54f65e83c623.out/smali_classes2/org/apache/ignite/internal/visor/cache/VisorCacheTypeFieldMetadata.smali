.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;
.super Ljava/lang/Object;
.source "VisorCacheTypeFieldMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private dbName:Ljava/lang/String;

.field private dbType:I

.field private javaName:Ljava/lang/String;

.field private javaType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/cache/CacheTypeFieldMetadata;)Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;
    .locals 2
    .param p0, "f"    # Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .prologue
    .line 49
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;-><init>()V

    .line 51
    .local v0, "fieldMetadata":Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->dbName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->dbType(I)V

    .line 53
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->javaName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->javaType(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public dbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public dbName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public dbType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->dbType:I

    return v0
.end method

.method public dbType(I)V
    .locals 0
    .param p1, "dbType"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->dbType:I

    .line 78
    return-void
.end method

.method public javaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    return-object v0
.end method

.method public javaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "javaName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public javaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->javaType:Ljava/lang/String;

    return-object v0
.end method

.method public javaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "javaType"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheTypeFieldMetadata;->javaType:Ljava/lang/String;

    .line 106
    return-void
.end method
