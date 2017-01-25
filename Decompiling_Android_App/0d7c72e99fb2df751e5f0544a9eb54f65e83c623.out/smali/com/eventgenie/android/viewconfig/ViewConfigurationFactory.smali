.class public Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;
.super Ljava/lang/Object;
.source "ViewConfigurationFactory.java"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConfig:Lcom/genie_connect/android/db/config/AppConfig;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 67
    iput-object p2, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mAppContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private static getProvider(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createExhibitorDetailViewConfiguration(Lcom/genie_connect/common/db/model/Exhibitor;)Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;
    .locals 4
    .param p1, "exhibitor"    # Lcom/genie_connect/common/db/model/Exhibitor;

    .prologue
    .line 76
    new-instance v1, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;

    const-class v0, Lcom/genie_connect/android/repository/ExhibitorRepository;

    invoke-static {v0}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/ExhibitorRepository;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;-><init>(Lcom/genie_connect/common/db/model/Exhibitor;Lcom/genie_connect/android/repository/ExhibitorRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    return-object v1
.end method

.method public createPoiDetailViewConfiguration(Lcom/genie_connect/common/db/model/Poi;)Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;
    .locals 3
    .param p1, "poi"    # Lcom/genie_connect/common/db/model/Poi;

    .prologue
    .line 109
    new-instance v0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;

    iget-object v1, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2}, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;-><init>(Lcom/genie_connect/common/db/model/Poi;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    return-object v0
.end method

.method public createProductDetailViewConfiguration(Lcom/genie_connect/common/db/model/Product;)Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;
    .locals 4
    .param p1, "product"    # Lcom/genie_connect/common/db/model/Product;

    .prologue
    .line 100
    new-instance v1, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;

    const-class v0, Lcom/genie_connect/android/repository/ProductRepository;

    invoke-static {v0}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/ProductRepository;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;-><init>(Lcom/genie_connect/common/db/model/Product;Lcom/genie_connect/android/repository/ProductRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    return-object v1
.end method

.method public createSessionDetailViewConfiguration(Lcom/genie_connect/common/db/model/Session;)Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;
    .locals 4
    .param p1, "session"    # Lcom/genie_connect/common/db/model/Session;

    .prologue
    .line 118
    new-instance v1, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;

    const-class v0, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-static {v0}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;-><init>(Lcom/genie_connect/common/db/model/Session;Lcom/genie_connect/android/repository/SessionRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    return-object v1
.end method

.method public createSpeakerDetailViewConfiguration(Lcom/genie_connect/common/db/model/Speaker;)Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;
    .locals 7
    .param p1, "speaker"    # Lcom/genie_connect/common/db/model/Speaker;

    .prologue
    .line 85
    new-instance v0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;

    const-class v1, Lcom/genie_connect/android/repository/SpeakerRepository;

    invoke-static {v1}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/SpeakerRepository;

    const-class v1, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-static {v1}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/repository/SessionRepository;

    const-class v1, Lcom/genie_connect/android/repository/SubsessionRepository;

    invoke-static {v1}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/repository/SubsessionRepository;

    iget-object v5, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    iget-object v6, p0, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->mAppContext:Landroid/content/Context;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;-><init>(Lcom/genie_connect/common/db/model/Speaker;Lcom/genie_connect/android/repository/SpeakerRepository;Lcom/genie_connect/android/repository/SessionRepository;Lcom/genie_connect/android/repository/SubsessionRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    return-object v0
.end method
