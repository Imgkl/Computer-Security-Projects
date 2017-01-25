.class public Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "EntityRawRowLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 48
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 49
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEntityRawRows(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
