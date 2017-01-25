.class public final Lcom/genie_connect/android/db/access/DatabaseCache;
.super Ljava/lang/Object;
.source "DatabaseCache.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mInfoPageNames:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 2
    .param p1, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    iput-object p1, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 48
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mInfoPageNames:Landroid/support/v4/util/LongSparseArray;

    .line 49
    return-void
.end method

.method private cacheInfoPageNames()V
    .locals 5

    .prologue
    .line 52
    iget-object v1, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mInfoPageNames:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 53
    iget-object v1, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbInfopages;->getAll()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 55
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :goto_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mInfoPageNames:Landroid/support/v4/util/LongSparseArray;

    const-string v2, "id"

    invoke-interface {v0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "name"

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 58
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getInfoPageName(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 66
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DatabaseCache;->reload()V

    .line 70
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mInfoPageNames:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/DatabaseCache;->cacheInfoPageNames()V

    .line 77
    iget-object v0, p0, Lcom/genie_connect/android/db/access/DatabaseCache;->mIsInitialised:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
