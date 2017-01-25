.class Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$1;
.super Ljava/lang/Object;
.source "CacheAbstractJdbcStore.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;-><init>(Ljava/lang/String;Lorg/apache/ignite/cache/store/jdbc/dialect/JdbcDialect;Lorg/apache/ignite/cache/CacheTypeMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)V
    .locals 0

    .prologue
    .line 1452
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$1;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1452
    check-cast p1, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$1;->apply(Lorg/apache/ignite/cache/CacheTypeFieldMetadata;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cache/CacheTypeFieldMetadata;)Z
    .locals 2
    .param p1, "col"    # Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .prologue
    .line 1454
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping$1;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyCols:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$500(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
