.class Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
.super Ljava/lang/Object;
.source "OverlayManagerListItem.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mFavourite:Z

.field private final mFeatured:Z

.field private final mId:J

.field private final mImageUrl:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "fav"    # Z
    .param p7, "featured"    # Z
    .param p8, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mDescription:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 47
    iput-wide p4, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mId:J

    .line 48
    iput-boolean p6, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mFavourite:Z

    .line 49
    iput-boolean p7, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mFeatured:Z

    .line 50
    iput-object p8, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mImageUrl:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mId:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isFavourite()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mFavourite:Z

    return v0
.end method

.method public isFeatured()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->mFeatured:Z

    return v0
.end method
