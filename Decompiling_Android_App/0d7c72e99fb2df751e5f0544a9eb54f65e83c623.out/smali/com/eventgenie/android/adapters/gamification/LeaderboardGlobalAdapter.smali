.class Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LeaderboardGlobalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final ROW_LAYOUT:I

.field public static final TAG_VISITOR_ID:I


# instance fields
.field private count:I

.field private final mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

.field private final mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

.field private final mShowEntityId:Z

.field private final mUdm:Lcom/genie_connect/android/db/access/Udm;

.field private final mVisitorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/eventgenie/android/R$string;->tag_leaderboard_visitor_id:I

    sput v0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->TAG_VISITOR_ID:I

    .line 58
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_leaderboard_app:I

    sput v0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->ROW_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/features/GmListModifier;JLjava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "listModifier"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p5, "namespace"    # J
    .param p7, "entityType"    # Ljava/lang/String;
    .param p8, "entityId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            "Lcom/genie_connect/android/db/config/features/GmListModifier;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    sget v0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->ROW_LAYOUT:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->count:I

    .line 78
    invoke-virtual {p3}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mVisitorList:Ljava/util/List;

    .line 80
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    .line 81
    iput-object p4, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    .line 82
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mShowEntityId:Z

    .line 84
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->append(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mShowEntityId:Z

    return v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/access/Udm;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/config/features/GmListModifier;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mListModifier:Lcom/genie_connect/android/db/config/features/GmListModifier;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mVisitorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mVisitorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->count:I

    .line 90
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->count:I

    return v0
.end method

.method public getDefaultDrawableForFav()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    return v0
.end method

.method public getItem(I)Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mVisitorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->getItem(I)Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->mVisitorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    move-object v1, p2

    .line 115
    .local v1, "row":Landroid/view/View;
    const/4 v2, 0x0

    .line 117
    .local v2, "wrapper":Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;
    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->ROW_LAYOUT:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;

    .end local v2    # "wrapper":Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;
    invoke-direct {v2, p0, v1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;-><init>(Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;Landroid/view/View;)V

    .line 121
    .restart local v2    # "wrapper":Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter;->getItem(I)Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;->populateFrom(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;I)V

    .line 128
    return-object v1

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrapper":Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;
    check-cast v2, Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;

    .restart local v2    # "wrapper":Lcom/eventgenie/android/adapters/gamification/LeaderboardGlobalAdapter$Wrapper;
    goto :goto_0
.end method
