.class public Lcom/genie_connect/android/repository/DownloadableRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "DownloadableRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Downloadable;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFavRepo:Lcom/genie_connect/android/repository/FavouriteDownloadableRepository;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/FavouriteDownloadableRepository;Lcom/genie_connect/android/repository/NoteRepository;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p4, "favRepo"    # Lcom/genie_connect/android/repository/FavouriteDownloadableRepository;
    .param p5, "notesRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Downloadable;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/FavouriteDownloadableRepository;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 55
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Downloadable;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 57
    iput-object p4, p0, Lcom/genie_connect/android/repository/DownloadableRepository;->mFavRepo:Lcom/genie_connect/android/repository/FavouriteDownloadableRepository;

    .line 58
    return-void
.end method


# virtual methods
.method public getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/repository/DownloadableRepository;->mFavRepo:Lcom/genie_connect/android/repository/FavouriteDownloadableRepository;

    return-object v0
.end method
