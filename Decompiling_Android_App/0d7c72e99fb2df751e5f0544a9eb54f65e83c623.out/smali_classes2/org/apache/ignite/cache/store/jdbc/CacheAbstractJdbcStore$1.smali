.class Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;
.super Ljava/lang/Object;
.source "CacheAbstractJdbcStore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->loadCacheRange(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

.field final synthetic val$clo:Lorg/apache/ignite/lang/IgniteBiInClosure;

.field final synthetic val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

.field final synthetic val$lowerBound:[Ljava/lang/Object;

.field final synthetic val$upperBound:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;[Ljava/lang/Object;[Ljava/lang/Object;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0

    .prologue
    .line 430
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore.1;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    iput-object p2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$lowerBound:[Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$upperBound:[Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    iput-object p5, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$clo:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore.1;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 432
    const/4 v6, 0x0

    .line 434
    .local v6, "conn":Ljava/sql/Connection;
    const/4 v13, 0x0

    .line 437
    .local v13, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v6

    .line 439
    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$lowerBound:[Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$upperBound:[Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadCacheQry:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$000(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v6, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v13

    .line 443
    const/4 v9, 0x1

    .line 445
    .local v9, "ix":I
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$lowerBound:[Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$lowerBound:[Ljava/lang/Object;

    array-length v8, v0

    .local v8, "i":I
    :goto_1
    if-lez v8, :cond_4

    .line 447
    const/4 v11, 0x0

    .local v11, "j":I
    move v10, v9

    .end local v9    # "ix":I
    .local v10, "ix":I
    :goto_2
    if-ge v11, v8, :cond_3

    .line 448
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "ix":I
    .restart local v9    # "ix":I
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$lowerBound:[Ljava/lang/Object;

    aget-object v0, v0, v11

    invoke-interface {v13, v10, v0}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 447
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "ix":I
    .restart local v10    # "ix":I
    goto :goto_2

    .line 439
    .end local v8    # "i":I
    .end local v10    # "ix":I
    .end local v11    # "j":I
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$lowerBound:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_3
    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$upperBound:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    :goto_4
    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadCacheRangeQuery(ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_4

    .line 446
    .restart local v8    # "i":I
    .restart local v10    # "ix":I
    .restart local v11    # "j":I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    move v9, v10

    .end local v10    # "ix":I
    .restart local v9    # "ix":I
    goto :goto_1

    .line 450
    .end local v8    # "i":I
    .end local v11    # "j":I
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$upperBound:[Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 451
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$upperBound:[Ljava/lang/Object;

    array-length v8, v0

    .restart local v8    # "i":I
    :goto_5
    if-lez v8, :cond_6

    .line 452
    const/4 v11, 0x0

    .restart local v11    # "j":I
    move v10, v9

    .end local v9    # "ix":I
    .restart local v10    # "ix":I
    :goto_6
    if-ge v11, v8, :cond_5

    .line 453
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "ix":I
    .restart local v9    # "ix":I
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$upperBound:[Ljava/lang/Object;

    aget-object v0, v0, v11

    invoke-interface {v13, v10, v0}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 452
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "ix":I
    .restart local v10    # "ix":I
    goto :goto_6

    .line 451
    :cond_5
    add-int/lit8 v8, v8, -0x1

    move v9, v10

    .end local v10    # "ix":I
    .restart local v9    # "ix":I
    goto :goto_5

    .line 455
    .end local v8    # "i":I
    .end local v11    # "j":I
    :cond_6
    invoke-interface {v13}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    .line 457
    .local v5, "rs":Ljava/sql/ResultSet;
    :goto_7
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 458
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyColumns()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadColIdxs:Ljava/util/Map;
    invoke-static {v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;

    move-result-object v12

    .line 459
    .local v12, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueColumns()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadColIdxs:Ljava/util/Map;
    invoke-static {v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;

    move-result-object v14

    .line 461
    .local v14, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;->val$clo:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-interface {v0, v12, v14}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 464
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local v9    # "ix":I
    .end local v12    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v7

    .line 465
    .local v7, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to load cache"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .end local v7    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 470
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 468
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local v9    # "ix":I
    :cond_7
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 470
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 473
    const/4 v0, 0x0

    return-object v0
.end method
