.class public Lcom/genie_connect/android/db/loaders/EntitySearchLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "EntitySearchLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
        "Ljava/util/List",
        "<",
        "Lcom/eventgenie/android/container/EntityWrapper;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mLimit:I

.field private final mSearchTerm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "entities"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "searchTerm"    # Ljava/lang/String;
    .param p5, "limit"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 65
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 66
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mSearchTerm:Ljava/lang/String;

    .line 67
    iput p5, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mLimit:I

    .line 68
    return-void
.end method

.method private convertToList(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/util/List;
    .locals 3
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Luk/co/alt236/easycursor/EasyCursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "methodResult":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    if-eqz p2, :cond_0

    .line 94
    :goto_0
    invoke-interface {p2}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/eventgenie/android/container/CursorEntityWrapper;-><init>(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {p2}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 100
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->loadInBackground()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/EntityWrapper;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ ENTITYPICKERLOADER: loading.... Term=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', limit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mLimit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 74
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v6, "methodResult":Ljava/util/Map;, "Ljava/util/Map<Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;>;"
    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mSearchTerm:Ljava/lang/String;

    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 79
    .local v2, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    iget-object v8, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mSearchTerm:Ljava/lang/String;

    iget v9, p0, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->mLimit:I

    invoke-virtual {v7, v2, v8, v9}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->search(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 80
    .local v1, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-direct {p0, v2, v1}, Lcom/genie_connect/android/db/loaders/EntitySearchLoader;->convertToList(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)Ljava/util/List;

    move-result-object v3

    .line 81
    .local v3, "entityList":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ ENTITYPICKERLOADER Loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 82
    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v1    # "cursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v3    # "entityList":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-object v6
.end method
