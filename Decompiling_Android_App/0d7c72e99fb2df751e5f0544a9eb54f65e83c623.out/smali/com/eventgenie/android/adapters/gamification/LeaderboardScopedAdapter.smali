.class Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LeaderboardScopedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG_VISITOR_ID:I


# instance fields
.field private final mEntityId:J

.field private final mEntityType:Ljava/lang/String;

.field private final mLayoutId:I

.field private final mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

.field private final mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

.field private final mShowEntityId:Z

.field private final mUdm:Lcom/genie_connect/android/db/access/Udm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/eventgenie/android/R$string;->tag_leaderboard_visitor_id:I

    sput v0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->TAG_VISITOR_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/features/GmListModifier;IJLjava/lang/String;J)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "mod"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p4, "layout"    # I
    .param p5, "namespace"    # J
    .param p7, "entityType"    # Ljava/lang/String;
    .param p8, "entityId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;",
            "Lcom/genie_connect/android/db/config/features/GmListModifier;",
            "IJ",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    invoke-direct {p0, p1, p4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 78
    iput p4, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mLayoutId:I

    .line 79
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    .line 80
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 81
    iput-object p3, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    .line 82
    iput-wide p8, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mEntityId:J

    .line 83
    iput-object p7, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mEntityType:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mShowEntityId:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mShowEntityId:Z

    return v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mEntityId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Lcom/genie_connect/android/db/access/Udm;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    return-object v0
.end method


# virtual methods
.method public getDefaultDrawableForFav()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    move-object v1, p2

    .line 97
    .local v1, "row":Landroid/view/View;
    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 102
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v2, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-direct {v2, p0, v1, v3}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;-><init>(Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;Landroid/view/View;Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V

    .line 103
    .local v2, "wrapper":Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-virtual {v2, v3, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardScopedAdapter$PlayerGameWrapper;->populateFrom(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;I)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    return-object v1
.end method
