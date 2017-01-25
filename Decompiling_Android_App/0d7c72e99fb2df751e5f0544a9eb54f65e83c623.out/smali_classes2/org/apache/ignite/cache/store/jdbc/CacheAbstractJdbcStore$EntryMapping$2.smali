.class final Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$2;
.super Ljava/lang/Object;
.source "CacheAbstractJdbcStore.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->databaseColumns(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1500
    check-cast p1, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$2;->apply(Lorg/apache/ignite/cache/CacheTypeFieldMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/cache/CacheTypeFieldMetadata;)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .prologue
    .line 1503
    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
