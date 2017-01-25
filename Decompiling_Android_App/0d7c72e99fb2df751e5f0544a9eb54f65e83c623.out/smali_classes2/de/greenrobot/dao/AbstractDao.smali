.class public abstract Lde/greenrobot/dao/AbstractDao;
.super Ljava/lang/Object;
.source "AbstractDao.java"

# interfaces
.implements Lde/greenrobot/dao/Dao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lde/greenrobot/dao/Dao",
        "<TT;TK;>;"
    }
.end annotation


# instance fields
.field protected final config:Lde/greenrobot/dao/internal/DaoConfig;

.field protected final db:Landroid/database/sqlite/SQLiteDatabase;

.field protected identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/identityscope/IdentityScope",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field protected identityScopeLong:Lde/greenrobot/dao/identityscope/IdentityScopeLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/identityscope/IdentityScopeLong",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final pkOrdinal:I

.field protected final session:Lde/greenrobot/dao/AbstractDaoSession;

.field protected statements:Lde/greenrobot/dao/internal/TableStatements;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 1
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 75
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V
    .locals 1
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lde/greenrobot/dao/AbstractDaoSession;

    .prologue
    .line 79
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    .line 81
    iput-object p2, p0, Lde/greenrobot/dao/AbstractDao;->session:Lde/greenrobot/dao/AbstractDaoSession;

    .line 82
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    invoke-virtual {p1}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    .line 84
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    instance-of v0, v0, Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    check-cast v0, Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    iput-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScopeLong:Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    .line 87
    :cond_0
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->statements:Lde/greenrobot/dao/internal/TableStatements;

    iput-object v0, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    .line 88
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    iget v0, v0, Lde/greenrobot/dao/Property;->ordinal:I

    :goto_0
    iput v0, p0, Lde/greenrobot/dao/AbstractDao;->pkOrdinal:I

    .line 89
    return-void

    .line 88
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroid/database/sqlite/SQLiteStatement;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    .line 557
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 558
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 564
    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 565
    return-void

    .line 559
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    if-nez p1, :cond_1

    .line 560
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "Cannot delete entity, key is null"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->assertSinglePk()V

    .line 569
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v6}, Lde/greenrobot/dao/internal/TableStatements;->getDeleteStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 570
    .local v5, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 571
    .local v3, "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 573
    :try_start_0
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 574
    :try_start_1
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v6, :cond_0

    .line 575
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v6}, Lde/greenrobot/dao/identityscope/IdentityScope;->lock()V

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .local v4, "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    move-object v3, v4

    .line 579
    .end local v4    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .restart local v3    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    :cond_0
    if-eqz p1, :cond_3

    .line 580
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 581
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 582
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v2, v5}, Lde/greenrobot/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 583
    if-eqz v3, :cond_1

    .line 584
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 597
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v6

    :try_start_3
    iget-object v7, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v7, :cond_2

    .line 598
    iget-object v7, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v7}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    :cond_2
    throw v6

    .line 601
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 607
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 588
    :cond_3
    if-eqz p2, :cond_5

    .line 589
    :try_start_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 590
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v2, v5}, Lde/greenrobot/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 591
    if-eqz v3, :cond_4

    .line 592
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 597
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_5
    :try_start_6
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v6, :cond_6

    .line 598
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v6}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    .line 601
    :cond_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 602
    :try_start_7
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 603
    if-eqz v3, :cond_7

    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v6, :cond_7

    .line 604
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v6, v3}, Lde/greenrobot/dao/identityscope/IdentityScope;->remove(Ljava/lang/Iterable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 607
    :cond_7
    iget-object v6, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 609
    return-void
.end method

.method private executeInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)J
    .locals 4
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteStatement;",
            ")J"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    monitor-enter p2

    .line 357
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lde/greenrobot/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 359
    .local v0, "rowId":J
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lde/greenrobot/dao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    .line 374
    return-wide v0

    .line 359
    .end local v0    # "rowId":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 362
    :cond_0
    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 364
    :try_start_2
    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 365
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lde/greenrobot/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 367
    .restart local v0    # "rowId":J
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 368
    :try_start_4
    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 370
    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 367
    .end local v0    # "rowId":J
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 370
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private executeInsertInTx(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Iterable;Z)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 283
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 284
    :try_start_1
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_0

    .line 285
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lde/greenrobot/dao/identityscope/IdentityScope;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :cond_0
    :try_start_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 290
    if-eqz p3, :cond_2

    .line 291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 292
    .local v2, "rowId":J
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lde/greenrobot/dao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 298
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v4

    :try_start_3
    iget-object v5, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v5, :cond_1

    .line 299
    iget-object v5, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v5}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    :cond_1
    throw v4

    .line 302
    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 305
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 294
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 298
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_6
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_4

    .line 299
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    .line 302
    :cond_4
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 303
    :try_start_7
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 305
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 307
    return-void
.end method

.method private static final getSqliteDateFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 858
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 859
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 861
    return-object v0
.end method


# virtual methods
.method protected assertSinglePk()V
    .locals 3

    .prologue
    .line 783
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 784
    new-instance v0, Lde/greenrobot/dao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v2, v2, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not have a single-column primary key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    return-void
.end method

.method protected attachEntity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected final attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 728
    if-eqz p3, :cond_1

    .line 729
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v0, p1, p2}, Lde/greenrobot/dao/identityscope/IdentityScope;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v0, p1, p2}, Lde/greenrobot/dao/identityscope/IdentityScope;->putNoLock(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method public count()J
    .locals 4

    .prologue
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    const/16 v3, 0x27

    .line 793
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v2, v2, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->assertSinglePk()V

    .line 524
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 525
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    .line 512
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v2, v2, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 516
    :cond_0
    return-void
.end method

.method public deleteByKey(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->assertSinglePk()V

    .line 534
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v1}, Lde/greenrobot/dao/internal/TableStatements;->getDeleteStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 535
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    monitor-enter v0

    .line 537
    :try_start_0
    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :goto_0
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v1, p1}, Lde/greenrobot/dao/identityscope/IdentityScope;->remove(Ljava/lang/Object;)V

    .line 554
    :cond_0
    return-void

    .line 538
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 541
    :cond_1
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 543
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 544
    :try_start_3
    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 545
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 546
    :try_start_4
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 548
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 545
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 548
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public deleteByKeyInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lde/greenrobot/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 633
    return-void
.end method

.method public varargs deleteByKeyInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lde/greenrobot/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 641
    return-void
.end method

.method public deleteInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 617
    return-void
.end method

.method public varargs deleteInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lde/greenrobot/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 625
    return-void
.end method

.method public detach(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v1, v0, p1}, Lde/greenrobot/dao/identityscope/IdentityScope;->detach(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 218
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 815
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "sqlDate"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    const/4 v1, 0x0

    .line 847
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-object v1

    .line 851
    :cond_1
    :try_start_0
    invoke-static {}, Lde/greenrobot/dao/AbstractDao;->getSqliteDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "ex":Ljava/text/ParseException;
    goto :goto_0
.end method

.method protected abstract getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation
.end method

.method protected getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 799
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_1

    .line 800
    if-nez p1, :cond_0

    .line 801
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Entity may not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_0
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "Entity has no key"

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    :cond_1
    return-object v0
.end method

.method public getNonPkColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkProperty()Lde/greenrobot/dao/Property;
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    return-object v0
.end method

.method public getProperties()[Lde/greenrobot/dao/Property;
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->properties:[Lde/greenrobot/dao/Property;

    return-object v0
.end method

.method public getSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->session:Lde/greenrobot/dao/AbstractDaoSession;

    return-object v0
.end method

.method getStatements()Lde/greenrobot/dao/internal/TableStatements;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->statements:Lde/greenrobot/dao/internal/TableStatements;

    return-object v0
.end method

.method public getTablename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/TableStatements;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->executeInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    .line 236
    return-void
.end method

.method public insertInTx(Ljava/lang/Iterable;Z)V
    .locals 2
    .param p2, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v1}, Lde/greenrobot/dao/internal/TableStatements;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 252
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0, v0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->executeInsertInTx(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Iterable;Z)V

    .line 253
    return-void
.end method

.method public varargs insertInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lde/greenrobot/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    .line 244
    return-void
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/TableStatements;->getInsertOrReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->executeInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    .line 270
    return-void
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;Z)V
    .locals 2
    .param p2, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v1}, Lde/greenrobot/dao/internal/TableStatements;->getInsertOrReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 261
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0, v0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->executeInsertInTx(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Iterable;Z)V

    .line 262
    return-void
.end method

.method public varargs insertOrReplaceInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lde/greenrobot/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    .line 278
    return-void
.end method

.method public insertWithoutSettingPk(Ljava/lang/Object;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v3}, Lde/greenrobot/dao/internal/TableStatements;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 324
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    monitor-enter v2

    .line 326
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lde/greenrobot/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 328
    .local v0, "rowId":J
    monitor-exit v2

    .line 342
    :goto_0
    return-wide v0

    .line 328
    .end local v0    # "rowId":J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 331
    :cond_0
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 333
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 334
    :try_start_2
    invoke-virtual {p0, v2, p1}, Lde/greenrobot/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 335
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 336
    .restart local v0    # "rowId":J
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    :try_start_3
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 339
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 336
    .end local v0    # "rowId":J
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 339
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method protected abstract isEntityUpdateable()Z
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->assertSinglePk()V

    .line 157
    if-nez p1, :cond_1

    .line 158
    const/4 v1, 0x0

    .line 169
    :cond_0
    :goto_0
    return-object v1

    .line 160
    :cond_1
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_2

    .line 161
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v4, p1}, Lde/greenrobot/dao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 166
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v4}, Lde/greenrobot/dao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 168
    .local v2, "keyArray":[Ljava/lang/String;
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public loadAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v2}, Lde/greenrobot/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/AbstractDao;->loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 226
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 390
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v3, p1, Landroid/database/CrossProcessCursor;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 392
    check-cast v3, Landroid/database/CrossProcessCursor;

    invoke-interface {v3}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 393
    .local v2, "window":Landroid/database/CursorWindow;
    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 395
    new-instance p1, Lde/greenrobot/dao/internal/FastCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    invoke-direct {p1, v2}, Lde/greenrobot/dao/internal/FastCursor;-><init>(Landroid/database/CursorWindow;)V

    .line 402
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lde/greenrobot/dao/identityscope/IdentityScope;->lock()V

    .line 405
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v3, v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->reserveRoom(I)V

    .line 409
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lde/greenrobot/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 412
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_2

    .line 413
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    .line 417
    :cond_2
    return-object v1

    .line 397
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window vs. result size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/greenrobot/dao/DaoLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v2    # "window":Landroid/database/CursorWindow;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_4

    .line 413
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    :cond_4
    throw v3
.end method

.method public loadByRowId(J)Ljava/lang/Object;
    .locals 5
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 178
    .local v1, "idArray":[Ljava/lang/String;
    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v3}, Lde/greenrobot/dao/internal/TableStatements;->getSelectByRowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected final loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    const/4 v0, 0x0

    .line 422
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScopeLong:Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    if-eqz v4, :cond_4

    .line 423
    if-eqz p2, :cond_1

    .line 425
    iget v4, p0, Lde/greenrobot/dao/AbstractDao;->pkOrdinal:I

    add-int/2addr v4, p2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 430
    :cond_1
    iget v4, p0, Lde/greenrobot/dao/AbstractDao;->pkOrdinal:I

    add-int/2addr v4, p2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 431
    .local v2, "key":J
    if-eqz p3, :cond_2

    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScopeLong:Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3}, Lde/greenrobot/dao/identityscope/IdentityScopeLong;->get2(J)Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    :goto_1
    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 437
    if-eqz p3, :cond_3

    .line 438
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScopeLong:Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3, v0}, Lde/greenrobot/dao/identityscope/IdentityScopeLong;->put2(JLjava/lang/Object;)V

    goto :goto_0

    .line 431
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScopeLong:Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3}, Lde/greenrobot/dao/identityscope/IdentityScopeLong;->get2NoLock(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 440
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScopeLong:Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3, v0}, Lde/greenrobot/dao/identityscope/IdentityScopeLong;->put2NoLock(JLjava/lang/Object;)V

    goto :goto_0

    .line 444
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v2    # "key":J
    :cond_4
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_7

    .line 445
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 446
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_5

    if-eqz v1, :cond_0

    .line 450
    :cond_5
    if-eqz p3, :cond_6

    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v4, v1}, Lde/greenrobot/dao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    :goto_2
    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 455
    invoke-virtual {p0, v1, v0, p3}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 450
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_6
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v4, v1}, Lde/greenrobot/dao/identityscope/IdentityScope;->getNoLock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 460
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_7
    if-eqz p2, :cond_8

    .line 461
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 462
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    .line 467
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_8
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final loadCurrentOther(Lde/greenrobot/dao/AbstractDao;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TO;*>;",
            "Landroid/database/Cursor;",
            "I)TO;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TO;*>;"
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lde/greenrobot/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 192
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 194
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Lde/greenrobot/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected unique result, but count was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lde/greenrobot/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/AbstractDao;->loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 186
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    invoke-static {p0}, Lde/greenrobot/dao/query/QueryBuilder;->internalCreate(Lde/greenrobot/dao/AbstractDao;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v3}, Lde/greenrobot/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 484
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs queryRawCreate(Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/Query;
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lde/greenrobot/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "argList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/AbstractDao;->queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lde/greenrobot/dao/query/Query;

    move-result-object v1

    return-object v1
.end method

.method public queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lde/greenrobot/dao/query/Query;
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lde/greenrobot/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p2, "selectionArg":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v1}, Lde/greenrobot/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lde/greenrobot/dao/query/Query;->internalCreate(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method

.method protected abstract readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "TT;I)V"
        }
    .end annotation
.end method

.method protected abstract readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 648
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->assertSinglePk()V

    .line 649
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 650
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v5}, Lde/greenrobot/dao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "sql":Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 652
    .local v3, "keyArray":[Ljava/lang/String;
    iget-object v5, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 654
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 655
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 656
    new-instance v5, Lde/greenrobot/dao/DaoException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entity does not exist in the database anymore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    .end local v0    # "available":Z
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 658
    .restart local v0    # "available":Z
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 659
    new-instance v5, Lde/greenrobot/dao/DaoException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected unique result, but count was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 661
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v1, p1, v5}, Lde/greenrobot/dao/AbstractDao;->readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V

    .line 662
    const/4 v5, 0x1

    invoke-virtual {p0, v2, p1, v5}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 666
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lde/greenrobot/dao/AbstractDao;->assertSinglePk()V

    .line 674
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v1}, Lde/greenrobot/dao/internal/TableStatements;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 675
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    monitor-enter v0

    .line 677
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lde/greenrobot/dao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    .line 678
    monitor-exit v0

    .line 691
    :goto_0
    return-void

    .line 678
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 681
    :cond_0
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 683
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 684
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Lde/greenrobot/dao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    .line 685
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 686
    :try_start_3
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 688
    iget-object v1, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 685
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 688
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public updateInTx(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->statements:Lde/greenrobot/dao/internal/TableStatements;

    invoke-virtual {v3}, Lde/greenrobot/dao/internal/TableStatements;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 752
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 754
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 755
    :try_start_1
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_0

    .line 756
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lde/greenrobot/dao/identityscope/IdentityScope;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 759
    :cond_0
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 760
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lde/greenrobot/dao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 763
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_1

    .line 764
    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    :cond_1
    throw v3

    .line 767
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 770
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 763
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_5
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_3

    .line 764
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lde/greenrobot/dao/identityscope/IdentityScope;->unlock()V

    .line 767
    :cond_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 768
    :try_start_6
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 770
    iget-object v3, p0, Lde/greenrobot/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 772
    return-void
.end method

.method public varargs updateInTx([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 780
    return-void
.end method

.method protected updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    .locals 4
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p1}, Lde/greenrobot/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 704
    iget-object v2, p0, Lde/greenrobot/dao/AbstractDao;->config:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v2, v2, Lde/greenrobot/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 705
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lde/greenrobot/dao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 706
    .local v1, "key":Ljava/lang/Object;, "TK;"
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 707
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 713
    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 714
    invoke-virtual {p0, v1, p1, p3}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 715
    return-void

    .line 708
    :cond_0
    if-nez v1, :cond_1

    .line 709
    new-instance v2, Lde/greenrobot/dao/DaoException;

    const-string v3, "Cannot update entity without key - was it inserted before?"

    invoke-direct {v2, v3}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TK;"
        }
    .end annotation
.end method

.method protected updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    .locals 4
    .param p2, "rowId"    # J
    .param p4, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p0, p1, p2, p3}, Lde/greenrobot/dao/AbstractDao;->updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0, p1, p4}, Lde/greenrobot/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 385
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v1, "Could not insert row (executeInsert returned -1)"

    invoke-static {v1}, Lde/greenrobot/dao/DaoLog;->w(Ljava/lang/String;)I

    goto :goto_0
.end method
