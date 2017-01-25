.class Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VisitorArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final layout:I


# instance fields
.field private count:I

.field private mContext:Landroid/content/Context;

.field private mLoggedInUser:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

.field private final mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

.field private final mShowEntityId:Z

.field private final mUdm:Lcom/genie_connect/android/db/access/Udm;

.field private mViewRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVisitorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mVisitorsWithNotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_entity_visitor:I

    sput v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->layout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/genie_connect/android/db/config/AppConfig;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lorg/json/JSONArray;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "namespace"    # J

    .prologue
    .line 87
    sget v0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->layout:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->count:I

    .line 88
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p3}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorList:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    .line 92
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mShowEntityId:Z

    .line 93
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbNotes;->getVisitorsWithNotes()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorsWithNotes:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->append(Lorg/json/JSONArray;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorsWithNotes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorsWithNotes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mShowEntityId:Z

    return v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/access/Udm;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mUdm:Lcom/genie_connect/android/db/access/Udm;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;)Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->isThisVisitorMe(J)Z

    move-result v0

    return v0
.end method

.method private getViewRestrictions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mViewRestrictions:Ljava/util/List;

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v0

    .line 116
    .local v0, "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    if-nez v0, :cond_1

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mViewRestrictions:Ljava/util/List;

    .line 123
    .end local v0    # "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mViewRestrictions:Ljava/util/List;

    return-object v1

    .line 119
    .restart local v0    # "vGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    :cond_1
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository;->getAllViewRestrictions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mViewRestrictions:Ljava/util/List;

    goto :goto_0
.end method

.method private isThisVisitorMe(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 179
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mLoggedInUser:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mLoggedInUser:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mLoggedInUser:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public append(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 101
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 103
    .local v2, "o":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->add(Ljava/lang/Object;)V

    .line 105
    iget-object v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->count:I

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->count:I

    return v0
.end method

.method public getDefaultDrawableForFav()I
    .locals 1

    .prologue
    .line 132
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 142
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->mVisitorList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 143
    .local v0, "o":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 144
    const-string v1, "id"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 146
    :cond_0
    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 153
    move-object v1, p2

    .line 154
    .local v1, "row":Landroid/view/View;
    const/4 v2, 0x0

    .line 156
    .local v2, "wrapper":Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;
    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 159
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 160
    new-instance v2, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;

    .end local v2    # "wrapper":Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;
    invoke-direct {v2, p0, v1}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;-><init>(Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;Landroid/view/View;)V

    .line 161
    .restart local v2    # "wrapper":Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter;->getViewRestrictions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;->populateFrom(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 168
    return-object v1

    .line 163
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrapper":Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;
    check-cast v2, Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;

    .restart local v2    # "wrapper":Lcom/eventgenie/android/adapters/entity/VisitorArrayAdapter$Wrapper;
    goto :goto_0
.end method
