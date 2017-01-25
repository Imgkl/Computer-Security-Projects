.class public Lcom/genie_connect/android/db/access/AndroidDaoProvider;
.super Ljava/lang/Object;
.source "AndroidDaoProvider.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/DaoProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDaoMaster:Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/genie_connect/android/db/access/AndroidDaoProvider;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/AndroidDaoProvider;->refreshDatabase()V

    .line 55
    return-void
.end method


# virtual methods
.method public getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEntity:",
            "Ljava/lang/Object;",
            "TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lde/greenrobot/dao/Dao",
            "<TTEntity;TTKey;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/genie_connect/android/db/access/AndroidDaoProvider;->mDaoMaster:Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;->newSession()Lcom/genie_connect/android/db/access/gen/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/access/gen/dao/DaoSession;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/AbstractDao;

    move-result-object v0

    return-object v0
.end method

.method public refreshDatabase()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/AndroidDaoProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/AndroidDaoProvider;->mDaoMaster:Lcom/genie_connect/android/db/access/gen/dao/DaoMaster;

    .line 66
    return-void
.end method
