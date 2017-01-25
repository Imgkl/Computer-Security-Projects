.class Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;
.super Ljava/lang/Object;
.source "CacheAbstractJdbcStore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCacheCustomQueryWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final clo:Lorg/apache/ignite/lang/IgniteBiInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK1;TV1;>;"
        }
    .end annotation
.end field

.field private final em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

.field private final qry:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0
    .param p2, "em"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p3, "qry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK1;TV1;>;)V"
        }
    .end annotation

    .prologue
    .line 1595
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadCacheCustomQueryWorker<TK1;TV1;>;"
    .local p4, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK1;TV1;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput-object p2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .line 1597
    iput-object p3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->qry:Ljava/lang/String;

    .line 1598
    iput-object p4, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->clo:Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 1599
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;
    .param p2, "x1"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/ignite/lang/IgniteBiInClosure;
    .param p5, "x4"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;

    .prologue
    .line 1580
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadCacheCustomQueryWorker<TK1;TV1;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

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
    .line 1580
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadCacheCustomQueryWorker<TK1;TV1;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1603
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadCacheCustomQueryWorker<TK1;TV1;>;"
    const/4 v6, 0x0

    .line 1605
    .local v6, "conn":Ljava/sql/Connection;
    const/4 v11, 0x0

    .line 1608
    .local v11, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->openConnection(Z)Ljava/sql/Connection;

    move-result-object v6

    .line 1610
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->qry:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v11

    .line 1612
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    .line 1614
    .local v5, "rs":Ljava/sql/ResultSet;
    invoke-interface {v5}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v10

    .line 1616
    .local v10, "meta":Ljava/sql/ResultSetMetaData;
    invoke-interface {v10}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 1618
    .local v4, "colIdxs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v0

    if-gt v8, v0, :cond_0

    .line 1619
    invoke-interface {v10, v8}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1621
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyColumns()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;

    move-result-object v9

    .line 1623
    .local v9, "key":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    iget-object v1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueColumns()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;

    move-result-object v12

    .line 1625
    .local v12, "val":Ljava/lang/Object;, "TV1;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadCacheCustomQueryWorker;->clo:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-interface {v0, v9, v12}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1630
    .end local v4    # "colIdxs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local v8    # "i":I
    .end local v9    # "key":Ljava/lang/Object;, "TK1;"
    .end local v10    # "meta":Ljava/sql/ResultSetMetaData;
    .end local v12    # "val":Ljava/lang/Object;, "TV1;"
    :catch_0
    move-exception v7

    .line 1631
    .local v7, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v0, Ljavax/cache/integration/CacheLoaderException;

    const-string v1, "Failed to execute custom query for load cache"

    invoke-direct {v0, v1, v7}, Ljavax/cache/integration/CacheLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    .end local v7    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1636
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1628
    .restart local v4    # "colIdxs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local v8    # "i":I
    .restart local v10    # "meta":Ljava/sql/ResultSetMetaData;
    :cond_1
    const/4 v0, 0x0

    .line 1634
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 1636
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    return-object v0
.end method
