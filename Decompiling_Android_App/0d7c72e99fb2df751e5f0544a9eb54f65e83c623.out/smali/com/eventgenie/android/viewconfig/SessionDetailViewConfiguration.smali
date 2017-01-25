.class public Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;
.super Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;
.source "SessionDetailViewConfiguration.java"


# static fields
.field public static final LOADER_EXHIBITOR_PRODUCT_DOWNLOADABLES:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRepo:Lcom/genie_connect/android/repository/SessionRepository;

.field private mSession:Lcom/genie_connect/common/db/model/Session;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/model/Session;Lcom/genie_connect/android/repository/SessionRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "session"    # Lcom/genie_connect/common/db/model/Session;
    .param p2, "repo"    # Lcom/genie_connect/android/repository/SessionRepository;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p3}, Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;-><init>(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 70
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    .line 71
    iput-object p4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    .line 73
    return-void
.end method


# virtual methods
.method public getTabs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->session_info:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    .line 91
    .local v0, "hasSpeakers":Z
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->VerticalContainer:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v3, v4, v5}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    .line 97
    .local v1, "speakersTab":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v6, "leadChairAtSessions"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 99
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->CHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v7, 0x69

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v6, "coChairAtSessions"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    const/4 v0, 0x1

    .line 107
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->COCHAIRS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v6, "keySpeakerAtSessions"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    const/4 v0, 0x1

    .line 115
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->KEYSPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v7, 0x68

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v6, "speakerAtSessions"

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    const/4 v0, 0x1

    .line 123
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v7, 0x6b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 129
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    const/4 v0, 0x1

    .line 131
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v7, 0x6c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 136
    :cond_4
    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_5
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 144
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SUBSESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_6
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedDownloadables(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 153
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_7
    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->showActivityStream()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->activity_stream_tab_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_8
    return-object v2
.end method
