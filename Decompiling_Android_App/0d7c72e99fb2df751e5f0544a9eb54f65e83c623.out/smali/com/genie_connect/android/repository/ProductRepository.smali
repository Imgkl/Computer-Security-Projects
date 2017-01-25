.class public Lcom/genie_connect/android/repository/ProductRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "ProductRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Product;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mFavRepo:Lcom/genie_connect/android/repository/FavouriteProductRepository;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/FavouriteProductRepository;Lcom/genie_connect/android/repository/NoteRepository;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p4, "favRepo"    # Lcom/genie_connect/android/repository/FavouriteProductRepository;
    .param p5, "notesRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Product;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/FavouriteProductRepository;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 57
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Product;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 59
    iput-object p4, p0, Lcom/genie_connect/android/repository/ProductRepository;->mFavRepo:Lcom/genie_connect/android/repository/FavouriteProductRepository;

    .line 60
    return-void
.end method


# virtual methods
.method public getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/genie_connect/android/repository/ProductRepository;->mFavRepo:Lcom/genie_connect/android/repository/FavouriteProductRepository;

    return-object v0
.end method

.method public hasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/ProductRepository;->getNoteRepository()Lcom/genie_connect/android/repository/NoteRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/repository/NoteRepository;->productHasNote(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public hasRelatedDownloadables(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/Long;

    .prologue
    .line 73
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/repository/ProductRepository;->hasRelatedEntitiesWithPermission(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method
