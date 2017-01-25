.class abstract Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "GamificationBaseDetailsScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final ANALYTICS_WIDGET:Ljava/lang/String; = "YOU FORGOT TO OVERRIDE"

.field public static final ANALYTICS_WIDGET_FAV:Ljava/lang/String; = "YOU FORGOT TO OVERRIDE"

.field public static final ENTITY_KIND:Ljava/lang/String; = "YOU FORGOT TO OVERRIDE"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field private static final PLACEHOLDER:Ljava/lang/String; = "YOU FORGOT TO OVERRIDE"


# instance fields
.field private mCurrentEntityId:J

.field private mCurrentEntityImage:Ljava/lang/String;

.field private mCurrentEntityName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 53
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->mCurrentEntityId:J

    return-void
.end method


# virtual methods
.method protected addInfoPageFragment(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;J)V
    .locals 2
    .param p1, "adapter"    # Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;
    .param p2, "id"    # J

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/genie_connect/android/db/access/DatabaseCache;->getInfoPageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->addInfoPageFragment(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;JLjava/lang/String;)V

    .line 63
    return-void
.end method

.method protected addInfoPageFragment(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;JLjava/lang/String;)V
    .locals 4
    .param p1, "adapter"    # Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;
    .param p2, "id"    # J
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v1, Lcom/genie_connect/android/repository/InfoPageRepository;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/InfoPageRepository;

    .line 68
    .local v0, "repo":Lcom/genie_connect/android/repository/InfoPageRepository;
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/genie_connect/android/repository/InfoPageRepository;->hasPermissionToViewAndOpen(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p2, p3}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->newInstance(J)Lcom/eventgenie/android/fragments/infopages/InfopageFragment;

    move-result-object v1

    invoke-virtual {p1, v1, p4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public getEntityId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->mCurrentEntityId:J

    return-wide v0
.end method

.method protected getEntityImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->mCurrentEntityImage:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntityKind()Ljava/lang/String;
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->mCurrentEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
.end method

.method protected getGameStore()Lcom/genie_connect/android/db/access/GameStore;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v0

    return-object v0
.end method

.method protected isCursorValid(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 92
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ ENTITY: Was asked to open invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getEntityKind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .line 96
    :cond_1
    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 108
    return-void
.end method

.method protected abstract populateHeader(Landroid/view/View;)V
.end method

.method protected setEntityId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->mCurrentEntityId:J

    .line 114
    return-void
.end method

.method protected setEntityImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->mCurrentEntityImage:Ljava/lang/String;

    .line 118
    return-void
.end method

.method protected setEntityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->mCurrentEntityName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V
    .locals 0
    .param p1, "config"    # Lcom/genie_connect/android/db/config/BaseConfig;
    .param p2, "sponsorshipOverride"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 127
    return-void
.end method
