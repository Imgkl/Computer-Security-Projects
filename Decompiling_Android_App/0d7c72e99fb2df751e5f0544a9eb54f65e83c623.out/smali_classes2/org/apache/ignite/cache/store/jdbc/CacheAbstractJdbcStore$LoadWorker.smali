.class Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;
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
    name = "LoadWorker"
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
        "Ljava/util/Map",
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field private final conn:Ljava/sql/Connection;

.field private final em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

.field private final keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TK1;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Ljava/sql/Connection;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)V
    .locals 2
    .param p2, "conn"    # Ljava/sql/Connection;
    .param p3, "em"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .prologue
    .line 1686
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK1;TV1;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    iput-object p2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->conn:Ljava/sql/Connection;

    .line 1688
    iput-object p3, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    .line 1690
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->maxKeysPerStmt:I
    invoke-static {p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$900(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->keys:Ljava/util/Collection;

    .line 1691
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Ljava/sql/Connection;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;
    .param p2, "x1"    # Ljava/sql/Connection;
    .param p3, "x2"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;
    .param p4, "x3"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;

    .prologue
    .line 1672
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK1;TV1;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Ljava/sql/Connection;Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;

    .prologue
    .line 1672
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->keys:Ljava/util/Collection;

    return-object v0
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
    .line 1672
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK1;TV1;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK1;TV1;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1695
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore<TK;TV;>.LoadWorker<TK1;TV1;>;"
    const/16 v16, 0x0

    .line 1698
    .local v16, "stmt":Ljava/sql/PreparedStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->conn:Ljava/sql/Connection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->keys:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadQuery(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v16

    .line 1700
    const/4 v12, 0x1

    .line 1702
    .local v12, "idx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->keys:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 1703
    .local v14, "key":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v1}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyColumns()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    move v13, v12

    .end local v12    # "idx":I
    .local v13, "idx":I
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;

    .line 1704
    .local v8, "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/ignite/cache/CacheTypeFieldMetadata;->getJavaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v14}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1706
    .local v9, "fieldVal":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v13, v8, v9}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->fillParameter(Ljava/sql/PreparedStatement;ILorg/apache/ignite/cache/CacheTypeFieldMetadata;Ljava/lang/Object;)V

    move v13, v12

    .line 1707
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_1

    .end local v8    # "field":Lorg/apache/ignite/cache/CacheTypeFieldMetadata;
    .end local v9    # "fieldVal":Ljava/lang/Object;
    :cond_0
    move v12, v13

    .line 1703
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    goto :goto_0

    .line 1709
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/Object;
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    .line 1711
    .local v6, "rs":Ljava/sql/ResultSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->keys:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v7

    .line 1713
    .local v7, "entries":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    :goto_2
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1714
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->keyColumns()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadColIdxs:Ljava/util/Map;
    invoke-static {v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;

    move-result-object v15

    .line 1715
    .local v15, "key":Ljava/lang/Object;, "TK1;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->cacheName:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$100(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    invoke-virtual {v4}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->valueColumns()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LoadWorker;->em:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;

    # getter for: Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->loadColIdxs:Ljava/util/Map;
    invoke-static {v5}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;->access$200(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$EntryMapping;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->buildObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Ljava/sql/ResultSet;)Ljava/lang/Object;

    move-result-object v17

    .line 1717
    .local v17, "val":Ljava/lang/Object;, "TV1;"
    move-object/from16 v0, v17

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1723
    .end local v6    # "rs":Ljava/sql/ResultSet;
    .end local v7    # "entries":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    .end local v12    # "idx":I
    .end local v15    # "key":Ljava/lang/Object;, "TK1;"
    .end local v17    # "val":Ljava/lang/Object;, "TV1;"
    :catchall_0
    move-exception v1

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v1

    .restart local v6    # "rs":Ljava/sql/ResultSet;
    .restart local v7    # "entries":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    .restart local v12    # "idx":I
    :cond_2
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    return-object v7
.end method
