.class public Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
.super Ljava/lang/Object;
.source "CacheTypeFieldMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private dbName:Ljava/lang/String;

.field private dbType:I

.field private javaName:Ljava/lang/String;

.field private javaType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbType"    # I
    .param p3, "javaName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p4, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    .line 60
    iput p2, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbType:I

    .line 61
    iput-object p3, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaType:Ljava/lang/Class;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    if-nez v3, :cond_2

    move v1, v2

    .line 127
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 129
    check-cast v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 131
    .local v0, "that":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    iget-object v3, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaType:Ljava/lang/Class;

    iget-object v4, v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaType:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbType:I

    iget v4, v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbType:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbType:I

    return v0
.end method

.method public getJavaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 139
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbType:I

    add-int v0, v1, v2

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 141
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    return v0
.end method

.method public setDatabaseName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDatabaseType(I)V
    .locals 0
    .param p1, "dbType"    # I

    .prologue
    .line 90
    iput p1, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->dbType:I

    .line 91
    return-void
.end method

.method public setJavaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "javaName"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setJavaType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->javaType:Ljava/lang/Class;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-class v0, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
