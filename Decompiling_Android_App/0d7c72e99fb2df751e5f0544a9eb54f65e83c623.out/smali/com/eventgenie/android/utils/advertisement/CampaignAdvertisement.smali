.class final Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
.super Ljava/lang/Object;
.source "CampaignAdvertisement.java"


# instance fields
.field private final mBannerUrl:Ljava/lang/String;

.field private final mCampaignId:J

.field private final mExhibitorId:J

.field private final mId:J

.field private final mInfoPageId:J

.field private final mLinkType:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 2
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "id"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mId:J

    .line 47
    const-string v0, "name"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mName:Ljava/lang/String;

    .line 48
    const-string v0, "bannerUrl"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mBannerUrl:Ljava/lang/String;

    .line 49
    const-string v0, "linkType"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mLinkType:I

    .line 50
    const-string v0, "campaigns"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mCampaignId:J

    .line 51
    const-string v0, "exhibitor"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mExhibitorId:J

    .line 52
    const-string v0, "infoPage"

    invoke-interface {p1, v0}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mInfoPageId:J

    .line 53
    return-void
.end method


# virtual methods
.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mCampaignId:J

    return-wide v0
.end method

.method public getExhibitorId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mExhibitorId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mId:J

    return-wide v0
.end method

.method public getInfoPageId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mInfoPageId:J

    return-wide v0
.end method

.method public getLinkType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mLinkType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->mName:Ljava/lang/String;

    return-object v0
.end method
